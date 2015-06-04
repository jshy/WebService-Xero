package Xero::Item;

use Moo;
use MooX::ClassAttribute;
use namespace::clean;

use Xero::Class::Item;

with 'Xero::Role::Client';

class_has 'endpoint' => ( is => 'ro', init_arg => undef, required => 1, default => 'Items' );


# This makes all the Xero Model Item attributes available as $self->$attr but to_xml wont try to serialize this classes attributes like "url". Do not add attributes in the Xero::Class:Contact or it will try to serialize those.
has 'model' => (
	is => 'rw',
	builder => sub { Xero::Class::Item->new },
	handles => 'Xero::Model::Item'
);


sub create_item { $_[0]->model->_save(@_) }

sub update_item { $_[0]->model->_save(@_) }

sub get_item { $_[0]->model->_find(@_) }

1;
