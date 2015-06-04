package Xero::Payroll::AU::Model::LeaveType;

use Moo::Role;

has 'Name' => ( is => 'rw' );
has 'TypeOfUnits' => ( is => 'rw' );
has 'IsPaidLeave' => ( is => 'rw' );
has 'ShowOnPayslip' => ( is => 'rw' );
has 'LeaveTypeID' => ( is => 'rw' );
has 'NormalEntitlement' => ( is => 'rw' );
has 'LeaveLoadingRate' => ( is => 'rw' );

1;
