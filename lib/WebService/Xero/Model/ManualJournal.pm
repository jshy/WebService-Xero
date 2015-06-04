package Xero::Model::ManualJournal;

use Moo::Role;

has 'ManualJournalID' => ( is => 'ro' );
has 'Narration' => ( is => 'rw' );
has 'JournalLines' => ( is => 'rw' );
has 'Date' => ( is => 'rw' );
has 'LineAmountTypes' => ( is => 'rw' );
has 'Status' => ( is => 'rw' );
has 'Url' => ( is => 'rw' );
has 'ShowOnCashBasisReports' => ( is => 'rw' );
has 'HasAttachments' => ( is => 'rw' );

package Xero::Model::JournalLine;

use Moo::Role;

has 'LineAmount' => ( is => 'rw' );
has 'AccountCode' => ( is => 'rw' );
has 'Description' => ( is => 'rw' );
has 'TaxType' => ( is => 'rw' );
has 'Tracking' => ( is => 'rw' );

1;
