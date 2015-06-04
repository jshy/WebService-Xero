package Xero::Model::Phone;  # does not have an endpoint

use Moo::Role;

# No primary key

has 'PhoneType' => ( is => 'rw' );
has 'PhoneNumber' => ( is => 'rw' );
has 'PhoneAreaCode' => ( is => 'rw' );
has 'PhoneCountryCode' => ( is => 'rw' );

1;
