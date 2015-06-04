package Xero::Model::Item;

use Moo::Role;

has 'Code' => ( is => 'rw' );
has 'Description' => ( is => 'rw' );
has 'PurchaseDetails' => ( is => 'rw', default => sub { Xero::Class::ItemDetail->new}, handles => 'Xero::Model::ItemDetail' );
has 'SalesDetails' => ( is => 'rw', default => sub { Xero::Class::ItemDetail->new}, handles => 'Xero::Model::ItemDetail'  );


package Xero::Model::ItemDetail;

use Moo::Role;

# No primary key
# The root is either PurchaseDatails or SalesDetails. These are plural, there is not single equiv. so the collection root is on the Model::Item.

has 'UnitPrice' => ( is => 'rw' );
has 'AccountCode' => ( is => 'rw' );
has 'TaxType' => ( is => 'rw' );


package Xero::Class::ItemDetail;

use Moo;

with 'Xero::Model::ItemDetail';

1;
