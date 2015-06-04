package Xero::Payroll::AU::Class::Employee;

use Moo;
use MooX::ClassAttribute;

with 'Xero::Payroll::AU::Model::Employee', 'Xero::Role::Class';

class_has 'xml_root' => ( is => 'ro', default => sub { 'Employee' });
class_has 'primary_key' => ( is => 'ro', default => sub { 'EmployeeID' });

1;
