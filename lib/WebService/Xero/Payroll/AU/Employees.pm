package Xero::Payroll::AU::Employees;

use Data::Printer;
use Moo;
use MooX::ClassAttribute;
use namespace::clean;

use Xero::Payroll::AU::Class::Employee;

with 'Xero::Payroll::Role::Client';

class_has 'endpoint' => ( is => 'ro', init_arg => undef, required => 1, default => 'Employees' );

has 'model' => (
    is => 'rw',
    builder => sub { Xero::Payroll::AU::Class::Employee->new },
    handles => 'Xero::Payroll::AU::Model::Employee'
);

sub create_employee { $_[0]->model->_save(@_) }

sub update_employee { $_[0]->model->_save(@_) }

sub get_employee { $_[0]->model->_find(@_) }

1;
