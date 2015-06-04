package Xero::Receipt;

use Moo;
use MooX::ClassAttribute;
use namespace::clean;

use Xero::Class::Receipt;

with 'Xero::Role::Client';

class_has 'endpoint' => ( is => 'ro', init_arg => undef, required => 1, default => 'Receipts' );


# This makes all the Xero Model Contact attributes available as $self->$attr but to_xml wont try to serialize this classes attributes like "url". Do not add attributes in the Xero::Class:Contact or it will try to serialize those.
has 'model' => (
	is => 'rw',
	builder => sub { Xero::Class::Receipt->new },
	handles => 'Xero::Model::Receipt'
);


sub create_receipt { $_[0]->model->_save(@_) }

sub update_receipt { $_[0]->model->_save(@_) }

sub get_receipt { $_[0]->model->_find(@_) }

sub delete_receipt {...}

sub _save {...}


1;
