package Xero::Role::Class;

use Moo::Role;
use Mojo::DOM;
use Mojo::Headers;
use XML::Simple;

use MooX::ClassAttribute;
use Data::Printer;

class_has 'endpoint' => ( 
    is => 'ro', 
    init_arg => undef, 
    required => 1, 
    builder => 1,
);

sub _build_endpoint {
    my $self = shift;
    my $stub = (split(/::/, $self))[-1];
    return $stub;
}

has 'query' => ( is => 'rw', predicate => 1, clearer => 1, );
has 'if_modified_since' => ( is => 'rw', predicate => 1, clearer => 1 );

sub _save {
	my $self = shift;
	my $client = shift;
    my $xml = $self->serialize($client->endpoint);
#return $xml;
    my $has_primary = 'has_' . $self->primary_key;
	my $tx;
#	PUT new (no primary key exists) POST update (primary key exists)
	if (($self->$has_primary != 1) && ($client->api_path !~ /payroll/)) { 
        $client->request_method('PUT');
        my $auth = $client->auth_head;
        $tx = $client->ua->put($client->url => $auth => form => {xml => $xml} );
    }
    else {
        $client->request_method('POST');
        my $auth = $client->auth_head($xml);
        
        $tx = $client->ua->post($client->url => $auth => form => {xml => $xml} );
    }
    $tx->res->code == 200 ? $self->deserialize($tx->res->body, $self->xml_root) : $self->xero_error($tx->res);

}

sub _find {
    my ($self, $client) = @_;

    $client->request_method('GET');
    my $headers = Mojo::Headers->new;
    $headers = $headers->header('If-Modified-Since' => $self->if_modified_since) if $self->has_if_modified_since;
    $headers = $headers->header(%{$self->auth_head});

    my $tx = $self->ua->get($self->url => $headers->to_hash);
    my $res = $self->model->deserialize($tx->res->body, $self->endpoint);

    my $root = $client->model->xml_root;
    my $col = ref $res->{$root} eq 'ARRAY' ? [ map { $self->model->new($_) } @{$res->{$root}} ] : $self->model->new($res->{$root}) ;
    return $col;
}
=pod

# TODO: make this functional.
sub find {
    my $self = shift;
    my $client = shift;

    $client->request_method('GET');
    my $auth = $client->auth_head;
    my $tx = $client->ua->get($client->url => $auth);

    $tx->res->code == 200 ? $self->deserialize($tx->res->body, $self->xml_root) : $self->xero_error($tx->res);
}

=cut

# Do around in Classes, to strip attributes that can't be set for PUT/POST

sub serialize {
    my $self = shift;
    my $endpoint = shift;
    my %hash = map { $_ => $self->{$_} } keys %{$self};
    my $obj = {$endpoint => {$self->xml_root => \%hash}};
# p $obj;
    my $gen = XML::Simple->new(NoAttr => 1, KeepRoot => 1);
    return $gen->XMLout($obj);
}

sub deserialize {
    my $class = shift;
    my $body = shift;
    my $start = shift; # This is the node name to start at.
    my $dom = Mojo::DOM->new->xml(1)->parse($body);
    XMLin($dom->at($start)->to_string);
}

sub xero_error {
    my $self = shift;
    my $response = shift;

    my $error = $self->deserialize($response->body, 'ApiException');
    
    $error;
    # log this.
    
}

sub clear_all_attribs {
    my $self = shift;
    my @attrs = keys %{$self};

    foreach my $attr (@attrs) { 
        my $clearer = 'clear_' . $attr;
        $self->$clearer;
    }
}

1;
