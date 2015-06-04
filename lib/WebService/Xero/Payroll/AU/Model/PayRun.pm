package Xero::Payroll::AU::Model::PayRun;

use Moo::Role;

has 'PayrollCalendarID' => ( is => 'rw' );
has 'PayRunID' => ( is => 'rw' );
has 'PayRunPeriodStartDate' => ( is => 'rw' );
has 'PayRunPeriodEndDate' => ( is => 'rw' );
has 'PayRunStatus' => ( is => 'rw' );
has 'PaymentDate' => ( is => 'rw' );
has 'PayslipMessage' => ( is => 'rw' );
has 'Payslips' => ( is => 'rw' );
has 'Wages' => ( is => 'rw' );
has 'Deductions' => ( is => 'rw' );
has 'Tax' => ( is => 'rw' );
has 'Super' => ( is => 'rw' );
has 'Reimbursment' => ( is => 'rw' );
has 'NetPay' => ( is => 'rw' );

1;
