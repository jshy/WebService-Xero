package Xero::Model::Account;

use Moo::Role;

#The following elements are required for a PUT request
has 'Code' => ( is => 'rw', required => 1 );
has 'Name' => ( is => 'rw', required => 1 );
has 'Type' => ( is => 'rw', required => 1 );

#The following elements are optional for a PUT request
has 'Description' => ( is => 'rw' );
has 'TaxType' => ( is => 'rw' );
has 'EnablePaymentsToAccount' => ( is => 'rw' );
has 'ShowInExpenseClaims' => ( is => 'rw' );

#Elements returned on a GET request only
has 'AccountID' => ( is => 'rw', predicate => 1, clearer => 1 );
has 'Class' => ( is => 'rw' );
has 'Status' => ( is => 'rw' );
has 'SystemAccount' => ( is => 'rw' );
has 'BankAccountNumber' => ( is => 'rw' );
has 'CurrencyCode' => ( is => 'rw' );
has 'ReportingCode' => ( is => 'rw' );
has 'ReportingCodeName' => ( is => 'rw' );
has 'HasAttachments' => ( is => 'rw' );

1;
