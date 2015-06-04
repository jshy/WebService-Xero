package Xero::Class::Item;

use Moo;
use MooX::ClassAttribute;

with 'Xero::Model::Item';

class_has 'xml_root' => ( is => 'ro', default => sub { 'Item' });
class_has 'primary_key => ( is => 'ro', default => sub { 'ItemID' });

1;