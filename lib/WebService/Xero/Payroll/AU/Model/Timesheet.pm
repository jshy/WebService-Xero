package Xero::Payroll::AU::Model::Timesheet;

use Moo::Role;

has $_ => ( is => 'rw', clearer => 1, predicate => 1) for (qw/
    EmployeeID
    StartDate
    EndDate
    TimesheetLines
    Status
    Hours
    TimesheetID
/);

1;

__END__
has 'EmployeeID' => ( is => 'rw' );
has 'StartDate' => ( is => 'rw' );
has 'EndDate' => ( is => 'rw' );
has 'TimesheetLines' => ( is => 'rw' );
has 'Status' => ( is => 'rw' );
has 'Hours' => ( is => 'rw' );
has 'TimesheetID' => ( is => 'rw' );

package TimesheetLine;

use Moo;

has 'EarningsRateID' => ( is => 'rw' );
has 'TrackingItemID' => ( is => 'rw' );
has 'NumberOfUnits' => ( is => 'rw' );

1;
