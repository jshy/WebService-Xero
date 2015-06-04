package Xero::Class::Organisation;

use Moo;
use MooX::ClassAttribute;
with 'Xero::Model::Organisation';

class_has 'xml_root' => ( is => 'ro', default => sub { 'Organisation' });


1;