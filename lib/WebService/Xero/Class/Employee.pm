package Xero::Class::Employee;

use Moo;
use MooX::ClassAttribute;

with 'Xero::Model::Employee';

class_has 'xml_root' => ( is => 'ro', default => sub { 'Employee' });
class_has 'primary_key' => ( is => 'ro', default => sub { 'EmployeeID' } );

1;
