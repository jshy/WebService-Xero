package Xero::Model::Organisation;

use Moo::Role;

# Primary undetermained

# GET ONLY

has 'APIKey' => ( is => 'rw' );
has 'Name' => ( is => 'rw' );
has 'LegalName' => ( is => 'rw' );
has 'PaysTax' => ( is => 'rw' );
has 'Version' => ( is => 'rw' );
has 'BaseCurrency' => ( is => 'rw' );
has 'CountryCode' => ( is => 'rw' );
has 'IsDemoCompany' => ( is => 'rw' );
has 'OrganisationStatus' => ( is => 'rw' );
has 'RegistrationNumber' => ( is => 'rw' );
has 'TaxNumber' => ( is => 'rw' );
has 'FinancialYearEndDay' => ( is => 'rw' );
has 'FinancialYearEndMonth' => ( is => 'rw' );
has 'SalesTaxBasis' => ( is => 'rw' );
has 'SalesTaxPeriod' => ( is => 'rw' );
has 'PeriodLockDate' => ( is => 'rw' );
has 'EndOfYearLockDate' => ( is => 'rw' );
has 'CreatedDateUTC' => ( is => 'rw' );
has 'OrganisationEntityType' => ( is => 'rw' );
has 'Timezone' => ( is => 'rw' );
has 'ShortCode' => ( is => 'rw' );
has 'LineOfBusiness' => ( is => 'rw' );
has 'Addresses' => ( is => 'rw' );
has 'Phones' => ( is => 'rw' );
has 'ExternalLinks' => ( is => 'rw' );
has 'PaymentTerms' => ( is => 'rw' );

package Xero::Model::PaymentTermBills;

use Moo;
use namespace::clean;

with 'Xero::Model::PaymentTerm';

package Xero::Model::PaymentTermSales;

use Moo;
use namespace::clean;

with 'Xero::Model::PaymentTerm';


package Xero::Model::PaymentTerm;

use Moo::Role;

has 'Day' => ( is => 'rw' );
has 'Type' => ( is => 'rw' );


1;
