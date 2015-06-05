package Xero::Invoices;

use Moo;
#use MooX::ClassAttribute;
use namespace::clean;

use Xero::Class::Invoice;

with 'Xero::Role::Client';

#class_has 'endpoint' => ( is => 'ro', init_arg => undef, required => 1, default => 'Invoices' );

has 'model' => (
	is => 'rw',
	builder => sub { Xero::Class::Invoice->new },
	handles => 'Xero::Model::Invoice'
);

sub create_invoice { $_[0]->model->_save(@_) }

sub update_invoice { $_[0]->model->_save(@_) }

sub get_invoice { $_[0]->model->_find(@_) }

1;
