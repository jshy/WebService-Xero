package Xero::Payroll::AU::Class::LeaveApplication;

use Moo;
use MooX::ClassAttribute;

with 'Xero::Payroll::AU::Model::LeaveApplication';

class_has 'xml_root' => ( is => 'ro', default => sub { 'LeaveApplication' });
class_has 'primary_key' => ( is => 'ro', default => sub { 'LeaveApplicationID' });

1;

