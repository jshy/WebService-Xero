package Xero::Class::Attachment;

use Moo;
use MooX::ClassAttribute;

with 'Xero::Model::Attachment';

class_has 'xml_root' => (is => 'ro', default => sub { 'Attachment' });
class_has 'primary_key' => ( is => 'ro', default => sub { 'AttachmentID' } );

1;
