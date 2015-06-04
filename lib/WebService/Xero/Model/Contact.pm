package Xero::Model::Contact;

## JES TODO: coerce collections into array of objects of type. 

use Moo::Role;
use Email::Valid;

has 'ContactID' => ( is => 'rw', predicate => 1 );
has 'ContactNumber' => ( is => 'rw' );
has 'AccountNumber' => ( is => 'rw' );

has 'ContactStatus' => ( 
    is => 'rw',
    isa => sub  { die "ContactStatus can be either 'Active' or 'Archived'. $_[0] value is not allowed." unless ($_[0] =~ /active|archived/i) }   
);

has 'Name' => ( 
    is => 'rw',
    isa => sub { die "Name can be a maximum of 500 charcters only. " if ( length $_[0] > 500 ) },
);

has 'FirstName' => ( 
    is => 'rw',
    isa => sub { die "FirstName can be a maximum of 255 charcters only. " if ( length $_[0] > 255 ) },
);

has 'LastName' => ( 
    is => 'rw',
    isa => sub { die "LastName can be a maximum of 255 charcters only. " if ( length $_[0] > 255 ) },
);

has 'EmailAddress' => ( 
    is => 'rw',
    isa => sub { 
        die "EmailAddress can be a maximum of 500 charcters only. " if ( length $_[0] > 500 );
        die "EmailAddress has not allowed characters. " unless ( Email::Valid->address($_[0]) ); 
    },
);

has 'SkypeUserName' => ( is => 'rw' );
has 'ContactPersons' => ( is => 'rw' );
has 'BankAccountDetails' => ( is => 'rw' );

has 'TaxNumber' => ( 
    is => 'rw',
    isa => sub { die "Tax number can be a max of 50 characters." if (length $_[0] > 50) } 
);

has 'AccountsReceivableTaxType' => ( is => 'rw' );
has 'AccountsPayableTaxType' => ( is => 'rw' );
has 'Addresses' => ( is => 'rw' );
has 'Phones' => ( is => 'rw' );
has 'UpdatedDateUTC' => ( is => 'rw' );
has 'IsSupplier' => ( 
    is => 'ro',
    isa => sub { die "IsSupplier can only be true or false" unless ($_[0] =~ m/true|false/i) },
    clearer => 'clear_issupplier', 
);  # can not be set on PUT or POST

has 'IsCustomer' => ( 
    is => 'ro',
    isa => sub { die "IsCustomer can only be true or false" unless ($_[0] =~ m/true|false/i) },
    clearer => 'clear_iscustomer',
);  # can not be set on PUT or POST

has 'DefaultCurrency' => ( is => 'rw' );

#The following are optional elements for PUT/POST requests and only retrieved on GET requests for a specific contact or when pagination is used

has 'XeroNetworkKey' => ( is => 'rw' );
has 'SalesDefaultAccountCode' => ( is => 'rw' );  	# Should we check the account exists before sending?
has 'PurchasesDefaultAccountCode' => ( is => 'rw' ); 	# Should we check the account exists before sending?
has 'SalesTrackingCategories' => ( is => 'rw' );  	# Should this match a categories selection somewhere in Viisto?
has 'PurchasesTrackingCategories' => ( is => 'rw' );  	# Should this match a categories selection somewhere in Viisto?


#The following are only returned on a GET request for a specific contact or using pagination
has 'ContactGroups' => ( is => 'rw' );
has 'Website' => ( is => 'rw' );
has 'BrandingTheme' => ( is => 'rw' );
has 'BatchPayments' => ( is => 'rw' );
has 'Discount' => ( is => 'rw' );

has 'Balances' => ( 
    is => 'ro',
    clearer => 1,
  #  coerce => sub { return Viisto::Xero::Object::Balance->new_from_xml($_[0]) }
);

has 'PaymentTerms' => ( 
    is => 'ro',
    clearer => 1,
);

has 'HasAttachments' => ( 
    is => 'ro',
    isa => sub { die "HasAttachments can only be true or false" unless ($_[0] =~ m/true|false/i) },
    clearer => 1,
);


# Strip IsSupplier/IsCustomer
around 'serialize' => sub { 
    my ($orig, $self) = @_;
    $self->clear_issupplier;
    $self->clear_iscustomer;
    
    $orig->($self);  
};


1;
