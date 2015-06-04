package Xero::Model::Address::Base;

use Moo::Role;

has 'AddressLine1' => ( is => 'rw' );
has 'AddressLine2' => ( is => 'rw' );
has 'City' => ( is => 'rw' );
has 'Region' => ( is => 'rw' );
has 'PostalCode' => ( is => 'rw' );
has 'Country' => ( is => 'rw' );


1;
