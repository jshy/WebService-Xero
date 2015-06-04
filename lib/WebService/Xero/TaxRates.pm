package Xero::TaxRate;

use Moo;
use MooX::ClassAttribute;
use namespace::clean;


use Xero::Class::TaxRate;

with 'Xero::Role::Client';

class_has 'endpoint' => ( is => 'ro', init_arg => undef, required => 1, default => 'TaxRates' );


# This makes all the Xero Model Contact attributes available as $self->$attr but to_xml wont try to serialize this classes attributes like "url". Do not add attributes in the Xero::Class:Contact or it will try to serialize those.
has 'model' => (
	is => 'rw',
	builder => sub { Xero::Class::TaxRate->new },
	handles => 'Xero::Model::TaxRate'
);


sub create_tax_rate { $_[0]->model->_save(@_) } 

sub update_tax_rate { $_[0]->model->_save(@_) } 

sub get_tax_rate { $_[0]->model->_find(@_) }

sub delete_tax_rate {...}  # mark status deleted

1;
