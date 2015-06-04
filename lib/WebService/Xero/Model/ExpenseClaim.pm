package Xero::Model::ExpenseClaim;

use Moo::Role;

has 'User' => ( is => 'rw' );
has 'Receipts' => ( is => 'rw' );

# The following are only returned on a GET request
has 'ExpenseClaimID' => ( is => 'rw' );
has 'Status' => ( is => 'rw' );
has 'UpdatedDateUTC' => ( is => 'rw' );
has 'Total' => ( is => 'rw' );
has 'AmountDue' => ( is => 'rw' );
has 'AmountPaid' => ( is => 'rw' );
has 'PaymentDueDate' => ( is => 'rw' );
has 'ReportingDate' => ( is => 'rw' );

# The following elements are required to submit a complete receipt
has 'ReceiptID' => ( is => 'rw' );


1;
