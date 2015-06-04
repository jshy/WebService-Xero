package Xero::Employees;

use Moo;
use MooX::ClassAttribute;
use namespace::clean;

use Xero::Class::Employee;

with 'Xero::Role::Client';

class_has 'endpoint' => ( is => 'ro', init_arg => undef, required => 1, default => 'Employees' );

# This makes all the Xero Model Employee attributes available as $self->$attr but to_xml wont try to serialize this classes attributes like "url". Do not add attributes in the Xero::Class:Contact or it will try to serialize those.
has 'model' => (
	is => 'rw',
	builder => sub { Xero::Class::Employee->new },
	handles => 'Xero::Model::Employee'
);


sub create_employee { $_[0]->model->_save(@_) }


sub update_employee { $_[0]->model->_save(@_) }

sub get_employee { $_[0]->model->_find(@_) }

sub archive_employee {...} # update status to archived. These are exactly the same functions as Contact. maybe a DRY opportunity.

1;
