package Xero::Class::Receipt;

use Moo;
use MooX::ClassAttribute;
with 'Xero::Model::Receipt';

class_has 'xml_root' => ( is => 'ro', default => sub { 'Receipt' });
class_has 'primary_key => ( is => 'ro', default => sub { 'ReceiptID' });



1;