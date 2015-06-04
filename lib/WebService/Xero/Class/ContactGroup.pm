package Xero::Class::ContactGroup;

use Moo;
use MooX::ClassAttribute;
with 'Xero::Model::ContactGroup';

class_has 'xml_root' => ( is => 'ro', default => sub { 'ContactGroup' });
class_has 'primary_key => ( is => 'ro', default => sub { 'ContactGroupID' });

1;
