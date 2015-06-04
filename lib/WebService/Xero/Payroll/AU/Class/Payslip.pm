package Xero::Payroll::AU::Class::Payslip;

use Moo;
use MooX::ClassAttribute;

with 'Xero::Payroll::AU::Model::Payslip';

class_has 'xml_root' => ( is => 'ro', default => sub { 'Payslip' });
class_has 'primary_key' => ( is => 'ro', default => sub { 'PayslipID' });

1;

