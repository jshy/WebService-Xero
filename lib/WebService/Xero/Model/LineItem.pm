package Xero::Model::LineItem;

use Moo::Role;

# No primary key

has 'Description' => ( is => 'rw' );

has 'Quantity' => ( is => 'rw' );
has 'UnitAmount' => ( is => 'rw' );
has 'ItemCode' => ( is => 'rw' );
has 'AccountCode' => ( is => 'rw' );

has 'TaxType' => ( is => 'rw' );
has 'TaxAmount' => ( is => 'rw' );
has 'LineAmount' => ( is => 'rw' );
has 'Tracking' => ( is => 'rw' );
has 'DiscountRate' => ( is => 'rw' );

1;
