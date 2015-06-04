package Xero::TrackingCategory;

use Moo;
use MooX::ClassAttribute;
use namespace::clean;


use Xero::Class::TrackingCategory;

with 'Xero::Role::Client';

class_has 'endpoint' => ( is => 'ro', init_arg => undef, required => 1, default => 'TrackingCategories' );


# This makes all the Xero Model Contact attributes available as $self->$attr but to_xml wont try to serialize this classes attributes like "url". Do not add attributes in the Xero::Class:Contact or it will try to serialize those.
has 'model' => (
	is => 'rw',
	builder => sub { Xero::Class::TrackingCategory->new },
	handles => 'Xero::Model::TrackingCategory'
);


sub create_tracking_category {
	shift->_save;	
}


sub update_tracking_category {
	shift->_save;
}

sub get_tracking_category {
		my $self = shift;
		
		my $tx = $self->ua->get($self->url);
		$self->from_xml($tx->res->body);
		return $self;
}


sub _save {
	my $self = shift;
	my $xml = $self->to_xml;
		
	my $tx = $self->ua->put($self->url => {Accept => '*/*'} => form => {xml => $xml} );
		
	$self->from_xml($tx->res->body);
	return $self;
}

1;