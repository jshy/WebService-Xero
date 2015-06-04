package Xero::Class::Address;

use Moo;
with 'Xero::Model::Address';

class_has 'xml_root' => ( is => 'ro', default => sub { 'Address' });
# No primary key and no xml root.

1;
