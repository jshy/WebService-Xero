package Xero::Class::Invoice;

use Moo;
use MooX::ClassAttribute;
with 'Xero::Model::Invoice', 'Xero::Role::Class';

class_has 'xml_root' => ( is => 'ro', default => sub { 'Invoice' });
class_has 'primary_key' => ( is => 'ro', default => sub { 'InvoiceID' });

1;
