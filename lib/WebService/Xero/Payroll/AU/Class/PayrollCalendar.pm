package Xero::Payroll::AU::Class::PayrollCalendar;

use Moo;
use MooX::ClassAttribute;

with 'Xero::Payroll::AU::Model::PayrollCalendar', 'Xero::Role::Class';

class_has 'xml_root' => ( is => 'ro', default => sub { 'PayrollCalendar' });
class_has 'primary_key' => ( is => 'ro', default => sub { 'PayrollCalendarID' });

1;

