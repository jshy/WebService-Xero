package Xero::Model::ContactGroup;

use Moo::Role;

has 'Name' => ( is => 'rw' );
has 'Status' => ( is => 'rw' );
has 'ContactGroupID' => ( is => 'rw' );
has 'Contacts' => ( is => 'rw' );

1;
