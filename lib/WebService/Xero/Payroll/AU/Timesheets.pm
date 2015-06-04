package Xero::Payroll::AU::Timesheets;

use Moo;
use MooX::ClassAttribute;
use namespace::clean;

use Xero::Payroll::AU::Class::Timesheet;

with 'Xero::Payroll::Role::Client';

class_has 'endpoint' => ( is => 'ro', init_arg => undef, required => 1, default => 'Timesheets' );

has 'model' => (
    is => 'rw',
    builder => sub { Xero::Payroll::AU::Class::Timesheet->new },
    handles => 'Xero::Payroll::AU::Model::Timesheet'
);


sub create_timesheet { $_[0]->model->_save(@_) }

sub update_timesheet {...}

sub get_timesheet { $_[0]->model->_find(@_) }

1;
