package Xero::Class::CreditNote;

use Moo;
use MooX::ClassAttribute;

with 'Xero::Model::CreditNote';

class_has 'xml_root' => ( is => 'ro', default => sub { 'CreditNote' });
class_has 'primary_key => ( is => 'ro', default => sub { 'CreditNoteID' });

1;
