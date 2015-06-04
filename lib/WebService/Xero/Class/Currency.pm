package Xero::Class::Currency;

use Moo;
use MooX::ClassAttribute;

with 'Xero::Model::Currency';

class_has 'xml_root' => ( is => 'ro', default => sub { 'Currency' });
# No primary  key

1;
