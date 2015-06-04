package Xero::Payroll::AU::Model::Setting;

use Moo::Role;

has 'Accounts' => ( is => 'rw' );
has 'TrackingCategories' => ( is => 'rw' );
has 'DaysInPayrollYear' => ( is => 'rw' );

package Account;

has 'AccountID' => ( is => 'rw' );
has 'Type' => ( is => 'rw' );
has 'Code' => ( is => 'rw' );
has 'Name' => ( is => 'rw' );

package TrackingCategories;

has 'TrackingCategoryID' => ( is => 'rw' );
has 'TrackingCategoryName' => ( is => 'rw' );

1;
