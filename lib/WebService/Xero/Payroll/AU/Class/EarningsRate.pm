package Xero::Payroll::AU::Class::EarningsRate;

use Moo;
use MooX::ClassAttribute;

with 'Xero::Payroll::AU::Model::EarningsRate', 'Xero::Role::Class';

class_has 'xml_root' => ( is => 'ro', default => sub { 'EarningsRate' });
class_has 'primary_key' => ( is => 'ro', default => sub { 'RearningRateID' });

1;
