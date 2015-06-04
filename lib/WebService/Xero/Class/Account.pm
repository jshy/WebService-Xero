package Xero::Class::Account;

use Moo;
use MooX::ClassAttribute;

with 'Xero::Model::Account';

class_has 'xml_root' => ( is => 'ro', default => sub { 'Account' } );
class_has 'primary_key' => ( is => 'ro', default => sub { 'AccountID' } );

1;
