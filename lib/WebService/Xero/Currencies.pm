package Xero::Currencies;

use Moo;
use MooX::ClassAttribute;
use namespace::clean;

use Xero::Class::Currency;

with 'Xero::Role::Client';

class_has 'endpoint' => ( is => 'ro', init_arg => undef, required => 1, default => 'Currencies' );

has 'model' => (
	is => 'rw',
	builder => sub { Xero::Class::Currency->new },
	handles => 'Xero::Model::Currency'
);

sub get_currency { $_[0]->model->_find(@_) }

1;
