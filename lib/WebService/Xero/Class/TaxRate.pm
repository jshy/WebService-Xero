package Xero::Class::TaxRate;

use Moo;
use MooX::ClassAttribute;
with 'Xero::Model::TaxRate';

class_has 'xml_root' => ( is => 'ro', default => sub { 'TaxRate' });


1;