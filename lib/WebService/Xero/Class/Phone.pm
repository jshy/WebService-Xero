package Xero::Class::Phone;

use Moo;
use MooX::ClassAttribute;
with 'Xero::Model::Phone';

class_has 'xml_root' => ( is => 'ro', default => sub { 'Phone' });


1;