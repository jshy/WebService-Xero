package Xero::Model::Journal;

use Moo::Role;

has 'JournalID' => ( is => 'rw' );
has 'JournalDate' => ( is => 'rw' );
has 'JournalNumber' => ( is => 'rw' );
has 'CreateDateUTC' => ( is => 'rw' );
has 'Reference' => ( is => 'rw' );
has 'JournalLines' => ( is => 'rw' );

package Xero::Model::JournalLine;
# These JournalLines are different from ManualJournal JournalLines, thus not in a class of there own.
use Moo::Role;

has 'JournalLineID' => ( is => 'rw' );
has 'AccountID' => ( is => 'rw' );
has 'AccountCode' => ( is => 'rw' );
has 'AccountType' => ( is => 'rw' );
has 'AccountName' => ( is => 'rw' );
has 'NetAmount' => ( is => 'rw' );
has 'GrossAmount' => ( is => 'rw' );
has 'TaxAmount' => ( is => 'rw' );
has 'TaxType' => ( is => 'rw' );
has 'TaxName' => ( is => 'rw' );
has 'TrackingCategories' => ( is => 'rw' );

1;
