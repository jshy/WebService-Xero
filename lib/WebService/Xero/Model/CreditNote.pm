package Xero::Model::CreditNote;

use Moo::Role;


has 'Reference' => ( is => 'rw' );
has 'Type' => ( is => 'rw' );
has 'Contact' => ( is => 'rw' );
has 'Date' => ( is => 'rw' );
has 'Status' => ( is => 'rw' );
has 'LineAmountTypes' => ( is => 'rw' );
has 'LineItems' => ( is => 'rw' );
has 'SubTotal' => ( is => 'rw' );
has 'TotalTax' => ( is => 'rw' );
has 'Total' => ( is => 'rw' );
has 'UpdatedDateUTC' => ( is => 'rw' );
has 'CurrencyCode' => ( is => 'rw' );
has 'FullyPaidOnDate' => ( is => 'rw' );
has 'CreditNoteID' => ( is => 'rw' );
has 'CreditNoteNumber' => ( is => 'rw' );
has 'SendToContact' => ( is => 'rw' );
has 'CurrencyRate' => ( is => 'rw' );
has 'RemainingCredit' => ( is => 'rw' );
has 'Allocations' => ( is => 'rw' );
has 'BrandingThemeID' => ( is => 'rw' );
has 'HasAttachments' => ( is => 'rw' );

1;
