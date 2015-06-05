package Xero::Role::OAuth;

use Net::OAuth;
use Crypt::OpenSSL::RSA;
use File::Slurp;
use Data::Printer;
use Math::Random::Secure qw(irand);

$Net::OAuth::PROTOCOL_VERSION = Net::OAuth::PROTOCOL_VERSION_1_0A;

use Moo::Role;

has [qw(consumer_key token)] => ( is => 'ro', default => sub { 'Put the generated consumer key in here' } );
has [qw(consumer_secret token_secret)] => ( is => 'ro', default => sub { 'Put the generated consumer secret in here' } );
has 'path_to_keyfile' => ( is => 'ro' ); # full path to keyfile *.pem
has 'request_method' => ( is => 'rw' );

has private_key => ( is => 'lazy' );

sub _build_private_key { 
    my $key = read_file($_[0]->path_to_keyfile);
    Crypt::OpenSSL::RSA->new_private_key( $key ); 
}


sub auth_head {
    my $self = shift;
    my $extra = shift;

    my $oauth = Net::OAuth->request('protected resource')->new(
        consumer_key => $self->consumer_key,
        consumer_secret => $self->consumer_secret,
        token => $self->token,
        token_secret => $self->token_secret,
        request_url => $self->url,
        request_method => $self->request_method,
        signature_method => 'RSA-SHA1',
        signature_key => $self->private_key,
        timestamp => time(),
        nonce => irand(),
    );
    
    if ($extra and $oauth->request_method eq 'POST') { $oauth->{extra_params} = {xml => $extra} }
    $oauth->sign;

    return {  Authorization => $oauth->to_authorization_header};

}


1;
