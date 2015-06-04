package Xero::Class::Report;

use Moo;
use MooX::ClassAttribute;
with 'Xero::Model::Report';

class_has 'xml_root' => ( is => 'ro', default => sub { 'Report' });


1;