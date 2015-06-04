package Xero::Model::Receipt;

use Moo::Role;

has 'Date' => ( is => 'rw', required => 1 );
has 'Contact' => ( is => 'rw', required => 1 );
has 'LineItems' => ( is => 'rw', required => 1 );
has 'User' => ( is => 'rw', required => 1 );


has 'Reference' => ( is => 'rw' );
has 'LineAmountTypes' => ( is => 'rw' );
has 'SubTotal' => ( is => 'rw' );
has 'TotalTax' => ( is => 'rw' );
has 'Total' => ( is => 'rw' );


has 'ReceiptID' => ( is => 'rw' );
has 'Status' => ( is => 'rw' );
has 'ReceiptNumber' => ( is => 'rw' );
has 'UpdatedDateUTC' => ( is => 'rw' );
has 'HasAttachments' => ( is => 'rw' );
has 'Url' => ( is => 'rw' );



## TODO: Work out this line item with others. Do role for base.
package Xero::Model::LineItem;

use Moo;
use namespace::clean;

1;
