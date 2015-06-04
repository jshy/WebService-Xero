package Xero::Payroll::AU::Class::Timesheet;

use Moo;
use MooX::ClassAttribute;

with 'Xero::Payroll::AU::Model::Timesheet', 'Xero::Role::Class' ;

class_has 'xml_root' => ( is => 'ro', default => sub { 'Timesheet' });
class_has 'primary_key' => ( is => 'ro', default => sub { 'TimesheetID' });

1;

