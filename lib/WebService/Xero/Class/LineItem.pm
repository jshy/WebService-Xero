package Xero::Class::LineItem;

use Moo;
use MooX::ClassAttribute;
with 'Xero::Model::LineItem';

class_has 'xml_root' => ( is => 'ro', default => sub { 'LineItem' });

1;