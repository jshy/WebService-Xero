package Xero::Model::TaxRate;

use Moo::Role;

# No primary key. Use where with paramenters to find record(s)

has 'Name' => ( is => 'rw' );
has 'TaxType' => ( is => 'rw' );
has 'TaxComponents' => ( is => 'rw' );
has 'Status' => ( is => 'rw' );

# The following element is required only for AU, NZ & UK based organisations.
Note – US and Global versions do not support the ReportTaxType element.
has 'ReportTaxType' => ( is => 'rw' );

# The following elements are only returned on a GET request
has 'CanApplyToAssets' => ( is => 'rw' );
has 'CanApplyToEquity' => ( is => 'rw' );
has 'CanApplyToExpenses' => ( is => 'rw' );
has 'CanApplyToLiabilities' => ( is => 'rw' );
has 'CanAppplyToRevenue' => ( is => 'rw' );
has 'DisplayTaxRate' => ( is => 'rw' );
has 'EffectiveRare' => ( is => 'rw' );

package Xero::Model::TaxComponent;

use Moo;
use namespace::clean;

has 'Name' => ( is => 'rw' );
has 'Rate' => ( is => 'rw' );
has 'IsCompound' => ( is => 'rw' );

1;
