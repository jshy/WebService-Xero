package Xero::ExpenseClaims;

use Moo;
use MooX::ClassAttribute;
use namespace::clean;

use Xero::Class::ExpenseClaim;

with 'Xero::Role::ExpenseClaim';

class_has 'endpoint' => ( is => 'ro', init_arg => undef, required => 1, default => 'ExpenseClaims' );


# This makes all the Xero Model ExpenseClaim attributes available as $self->$attr but to_xml wont try to serialize this classes attributes like "url". Do not add attributes in the Xero::Class:ExpenseClaim or it will try to serialize those.
has 'model' => (
	is => 'rw',
	builder => sub { Xero::Class::ExpenseClaim->new },
	handles => 'Xero::Model::ExpenseClaim'
);


sub create_expense_claim { $_[0]->model->_save(@_) }

sub update_expense_claim { $_[0]->model->_save(@_) }

sub get_expense_claim { $_[0]->model->_find(@_) }

1;
