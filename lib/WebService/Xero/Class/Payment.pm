package Xero::Class::Payment;

use Moo;
with 'Xero::Model::Payment';

# This is the one with invoice or credit note id.

class_has 'xml_root' => ( is => 'ro', default => sub { 'Payment' });
class_has 'primary_key => ( is => 'ro', default => sub { 'PaymentID' });

1;