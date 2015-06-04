package Xero::Class::Contact;

use Moo;
use MooX::ClassAttribute;
with 'Xero::Model::Contact', 'Xero::Role::Class';

class_has 'xml_root' => ( is => 'ro', default => sub {'Contact'});
class_has 'primary_key' => ( is => 'ro', default => sub { 'ContactID' });

1;
