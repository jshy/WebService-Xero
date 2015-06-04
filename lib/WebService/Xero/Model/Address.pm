package Xero::Model::Address; # does not have an endpoint 

use Moo::Role;

has 'AddressType' => ( is => 'rw' );
has 'AddressLine3' => ( is => 'rw' );
has 'AddressLine4' => ( is => 'rw' );
has 'AttentionTo' => ( is => 'rw' );

1;
