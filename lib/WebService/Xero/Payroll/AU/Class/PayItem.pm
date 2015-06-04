package Xero::Payroll::AU::Class::PayItem;

use Moo;
use MooX::ClassAttribute;

with 'Xero::Payroll::AU::Model::PayItem', 'Xero::Role::Class';

class_has 'xml_root' => ( is => 'ro', default => sub { 'PayItem' });
class_has 'primary_key' => ( is => 'ro', default => sub { 'PayItemID' });

1;

