package Xero::Payroll::AU::PayrollCalendars;

use Xero::Payroll::AU::Class::PayrollCalendar;
use Data::Printer;
use Moo;
use MooX::ClassAttribute;
use namespace::clean;

with 'Xero::Payroll::Role::Client';

class_has 'endpoint' => ( is => 'ro', init_arg => undef, required => 1, default => 'PayrollCalendars' );

has 'model' => (
    is => 'rw',
    builder => sub { Xero::Payroll::AU::Class::PayrollCalendar->new },
    handles => 'Xero::Payroll::AU::Model::PayrollCalendar'
);

sub get_calendar { $_[0]->model->_find(@_) }

1;
