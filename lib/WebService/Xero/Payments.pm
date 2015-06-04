package Xero::Payments;

use Moo;
use MooX::ClassAttribute;
use namespace::clean;

use Xero::Class::Payment;

with 'Xero::Role::Payment';

class_has 'endpoint' => ( is => 'ro', init_arg => undef, required => 1, default => 'Payments' );


# This makes all the Xero Model CreditNote attributes available as $self->$attr but to_xml wont try to serialize this classes attributes like "url". Do not add attributes in the Xero::Class:CreditNote or it will try to serialize those.
has 'model' => (
	is => 'rw',
	builder => sub { Xero::Class::Payment->new },
	handles => 'Xero::Model::Payment'
);


sub create_payment { $_[0]->model->_save(@_) }

sub update_payment { $_[0]->model->_save(@_) }

sub get_payment { $_[0]->model->_find(@_) }

sub reverse_payment {...}

1;
