package Xero::Model::Payment;

use Moo::Role;

has 'PaymentID' => ( is => 'ro');
has 'Invoice' => ( is => 'ro' ); # in coerce check creditnote not set.
has 'CreditNote' => ( is => 'ro' ); # in coerce, check invoice not set
has 'Account' => ( is => 'rw' );
has 'Date' => ( is => 'rw' );
has 'CurrencyRate' => ( is => 'rw' );
has 'Amount' => ( is => 'rw' );
has 'Reference' => ( is => 'rw' );
has 'IsReconciled' => ( is => 'rw' );

The following elements are only returned on GET requests
has 'Status' => ( is => 'ro' );
has 'PaymentType' => ( is => 'ro' );
has 'UpdatedDateUTC' => ( is => 'ro' );

package Xero::Model::Payment::Invoice;
use Moo;
use namespace::clean;
with 'Xero::Role::Model';

package Xero::Model::Payment::CreditNote;
use Moo;
use namespace::clean;
with 'Xero::Role::Model';

package Xero::Model::Payment::Account;
use Moo;
use namespace::clean;
with 'Xero::Role::Model';

around serialize => sub {...}; # do invoice creditnote account funkyness here
around deserialize => sub {...};


1;
