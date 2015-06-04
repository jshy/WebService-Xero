package Xero::User;

use Moo;
use MooX::ClassAttribute;
use namespace::clean;


use Xero::Class::User;

with 'Xero::Role::Client';

class_has 'endpoint' => ( is => 'ro', init_arg => undef, required => 1, default => 'Users' );

has 'model' => (
	is => 'rw',
	builder => sub { Xero::Class::User->new },
	handles => 'Xero::Model::User'
);

sub get_user { $_[0]->model->_find(@_) }

1;
