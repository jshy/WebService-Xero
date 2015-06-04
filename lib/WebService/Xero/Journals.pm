package Xero::Journals;

use Moo;
use MooX::ClassAttribute;
use namespace::clean;

use Xero::Class::Journal;

with 'Xero::Role::Journal';

class_has 'endpoint' => ( is => 'ro', init_arg => undef, required => 1, default => 'Journals' );

has 'model' => (
	is => 'rw',
	builder => sub { Xero::Class::Journal->new },
	handles => 'Xero::Model::Journal'
);

sub get_currency { $_[0]->model->_find(@_) }

1;
