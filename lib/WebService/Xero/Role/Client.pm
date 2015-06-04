package Xero::Role::Client;

use Path::Tiny;
use Mojo::UserAgent;
use Mojo::URL;

use Moo::Role;

with 'Xero::Role::OAuth';

has $_ => ( 
    is => 'rw', 
    predicate => 1, 
    clearer => 1, 
) 
    for ('query', 'if-modified-since', 'guid');

has 'scheme' => ( 
    is => 'ro', 
    default => 'https',
);

has 'host' => ( 
    is => 'ro', 
    default => 'api.xero.com' 
);

has 'api_path' => ( 
    is => 'ro', 
    default => 'api.xro/2.0'
);

has 'url' => ( is => 'lazy' );

sub _build_url {
    my $self = shift;
    my $path = $self->has_guid ? path($self->api_path, $self->endpoint, $self->guid) : path($self->api_path, $self->endpoint); # yes I am abusing Path::Tiny
    my $url = Mojo::URL->new;
    $url->scheme($self->scheme);
    $url->host($self->host);
    $url->path("$path");
    $url->query(where => $self->query) if $self->has_query;
    
    return "$url";
}


has 'ua' => (
    is => 'ro',
    init_arg => undef,
    required => 1,
    default => sub { return Mojo::UserAgent->new },
);


1;
