package Xero::Model::Currency;

use Moo::Role;

# No primary key

has 'Code' => ( is => 'ro' );
has 'Description' => ( is => 'ro' );

1;
