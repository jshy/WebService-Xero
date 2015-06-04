package Xero::Payroll::AU::Model::LeaveApplication;

use Moo::Role;

has 'EmployeeID' => ( is => 'rw' );
has 'LeaveTypeID' => ( is => 'rw' );
has 'Title' => ( is => 'rw' );
has 'StartDate' => ( is => 'rw' );
has 'EndDate' => ( is => 'rw' );
has 'Description' => ( is => 'rw' );
has 'LeavePeriods' => ( is => 'rw' );

package LeavePeriod;

use Moo;

has 'NumberOfUnits' => ( is => 'rw' );
has 'PayPeriodStartDate' => ( is => 'rw' );
has 'PayPeriodEndDate' => ( is => 'rw' );
has 'LeavePeriodStatus' => ( is => 'rw' );

1;
