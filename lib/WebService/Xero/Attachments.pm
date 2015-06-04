package Xero::Attachment;

use Mojo::Util qw(b64_encode b64_decode slurp spurt);
use Mojo::DOM;
use Moo;
use MooX::ClassAttribute;
use namespace::clean;

use Xero::Model::Attachment;

with 'Xero::Role::Client';

class_has 'endpoint' => ( is => 'ro', init_arg => undef, required => 1, default => 'Attachments' );

has 'resource'  => ( is => 'rw' );
has 'guid'      => ( is => 'rw' );
has 'filename'  => ( is => 'rw' );

sub save_file {
    my $self = shift;
    my $content = b64_encode(slurp $self->filename);
    
    my $url = $self->url;
    my $tx = $self->ua->tx(POST => $url);
    $tx->req->content($content);
    
    my $content = $tx->res->body;
    my $dom = Mojo::DOM->new->xml(1)->parse($content);
    my $xml = $dom->at('Attachment')->to_string;
    
    my $object = Xero::Model::Attachment->new_from_xml($xml);
    return $object;
}

sub get_file {
    my $self = shift;
    my $url = $self->url;
    my $tx = $self->ua->get($url);
    $tx->res->content->asset->move_to($self->filename);
    # return a local link to the file here
}

1;
