package Xero::RepeatingInvoice;

use Moo;
use MooX::ClassAttribute;
use namespace::clean;


use Xero::Class::RepeatingInvoice;

with 'Xero::Role::Client';

class_has 'endpoint' => ( is => 'ro', init_arg => undef, required => 1, default => 'RepeatingInvoices' );

has 'model' => (
	is => 'rw',
	builder => sub { Xero::Class::RepeatingInvoice->new },
	handles => 'Xero::Model::RepeatingInvoice'
);

sub get_repeating_invoice{ $_[0]->model->_find(@_) }

1;
