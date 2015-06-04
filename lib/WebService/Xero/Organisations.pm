package Xero::Organisations;

use Moo;
use MooX::ClassAttribute;
use namespace::clean;

use Xero::Class::Organisation;

with 'Xero::Role::Client';

class_has 'endpoint' => ( is => 'ro', init_arg => undef, required => 1, default => 'Organisation' );

has 'model' => (
	is => 'rw',
	builder => sub { Xero::Class::Organisation->new },
	handles => 'Xero::Model::Organisation'
);

sub get_organisation { $_[0]->model->_find(@_) }

1;
