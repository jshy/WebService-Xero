package Xero::Model::Invoice;

use Moo::Role;

has $_ => ( is => 'rw', clearer => 1, predicate => 1) for (qw/
    Type
    Contact
    LineItems
    Date
    DueDate
    LineAmountTypes
    InvoiceNumber
    Reference
    BrandingThemeID
    Url
    CurrencyCode
    CurrencyRate
    Status
    SendToContact
    ExpectedPaymentDate
    PlannedPaymentDate
    SubTotal
    TotalTax
    Total
    InvoiceID
    HasAttachments
    Payments
    AmountDue
    AmountPaid 
    FullyPaidOnDate
    UpdatedDateUTC
    CreditNotes
/);

1;

__END__

has 'Type' => ( is => 'rw' );
has 'Contact' => ( is => 'rw' );
has 'LineItems' => ( is => 'rw' );

# The following additional elements are recommended for a PUT / POST request
has 'Date' => ( is => 'rw' );
has 'DueDate' => ( is => 'rw' );
has 'LineAmountTypes' => ( is => 'rw' );

# The following are optional for a PUT / POST request
has 'InvoiceNumber' => ( is => 'rw' );
has 'Reference' => ( is => 'rw' );
has 'BrandingThemeID' => ( is => 'rw' );
has 'Url' => ( is => 'rw' );
has 'CurrencyCode' => ( is => 'rw' );
has 'CurrencyRate' => ( is => 'rw' );
has 'Status' => ( is => 'rw' );
has 'SentToContact' => ( is => 'rw' );
has 'ExpectedPaymentDate' => ( is => 'rw' );
has 'PlannedPaymentDate' => ( is => 'rw' );
has 'SubTotal' => ( is => 'rw' );
has 'TotalTax' => ( is => 'rw' );
has 'Total' => ( is => 'rw' );

# The following are only returned on a GET request
has 'InvoiceID' => ( is => 'rw', predicate => 1 );
has 'HasAttachements' => ( is => 'rw' );
has 'Payments' => ( is => 'rw' );
has 'AmountDue' => ( is => 'rw' );
has 'AmountPaid' => ( is => 'rw' );
has 'FullyPaidOnDate' => ( is => 'rw' );
has 'AmountCredited' => ( is => 'rw' );
has 'UpdatedDateUTC' => ( is => 'rw' );
has 'CreditNotes' => ( is => 'rw' );

1;
