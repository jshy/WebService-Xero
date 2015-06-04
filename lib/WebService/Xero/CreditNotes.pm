package Xero::CreditNotes;

use Moo;
use MooX::ClassAttribute;
use namespace::clean;

use Xero::Class::CreditNote;

with 'Xero::Role::CreditNote';

class_has 'endpoint' => ( is => 'ro', init_arg => undef, required => 1, default => 'CreditNotes' );

# This makes all the Xero Model CreditNote attributes available as $self->$attr but to_xml wont try to serialize this classes attributes like "url". Do not add attributes in the Xero::Class:CreditNote or it will try to serialize those.
has 'model' => (
	is => 'rw',
	builder => sub { Xero::Class::CreditNote->new },
	handles => 'Xero::Model::CreditNote'
);

sub create_credit_note { $_[0]->model->_save(@_) }

sub update_credit_note { $_[0]->model->_save(@_) }

sub get_credit_note { $_[0]->model->_find(@_) }

1;
