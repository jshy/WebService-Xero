package Xero::Class::User;

use Moo;
use MooX::ClassAttribute;
with 'Xero::Model::User';

class_has 'xml_root' => ( is => 'ro', default => sub { 'User' });
class_has 'primary_key => ( is => 'ro', default => sub { 'UserID' });

1;