package Xero::Payroll::AU::Class::PayRun;

use Moo;
use MooX::ClassAttribute;

with 'Xero::Payroll::AU::Model::PayRun';

class_has 'xml_root' => ( is => 'ro', default => sub { 'PayRun' });
class_has 'primary_key' => ( is => 'ro', default => sub { 'PayRunID' });

1;

