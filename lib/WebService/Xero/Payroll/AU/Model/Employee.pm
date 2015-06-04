package Xero::Payroll::AU::Model::Employee;

use Moo::Role;

has 'FirstName' => ( is => 'rw' );
has 'LastName' => ( is => 'rw' );
has 'DateOfBirth' => ( is => 'rw' );
has 'HomeAddress' => ( is => 'rw' );
has 'StartDate' => ( is => 'rw' );
has 'Title' => ( is => 'rw' );
has 'MiddleNames' => ( is => 'rw' );
has 'Email' => ( is => 'rw' );
has 'Gender' => ( is => 'rw' );
has 'Phone' => ( is => 'rw' );
has 'Mobile' => ( is => 'rw' );
has 'TwitterUserName' => ( is => 'rw' );
has 'IsAuthorisedToApproveLeave' => ( is => 'rw' );
has 'IsAuthorisedToApproveTimesheets' => ( is => 'rw' );
has 'Occupation' => ( is => 'rw' );
has 'Classification' => ( is => 'rw' );
has 'OrdinaryEarningsRateID' => ( is => 'rw' );
has 'PayrollCalendarID' => ( is => 'rw' );
has 'EmployeeGroupName' => ( is => 'rw' );
has 'BankAccounts' => ( is => 'rw' );
has 'PayTemplate' => ( is => 'rw' );
has 'OpeningBalances' => ( is => 'rw' );
has 'SuperMemberships' => ( is => 'rw' );
has 'TerminationDate' => ( is => 'rw' );
has 'UpdatedDateUTC' => ( is => 'rw' );

package HomeAddress;

use Moo::Role;
with 'Xero::Model::Address::Base';

1;
