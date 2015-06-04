package Xero::Class::RepeatingInvoice;

use Moo;
use MooX::ClassAttribute;
with 'Xero::Model::RepeatingInvoice';

class_has 'xml_root' => ( is => 'ro', default => sub { 'RepeatingInvoice' });
class_has 'primary_key => ( is => 'ro', default => sub { 'ReportInvoiceID' });

1;