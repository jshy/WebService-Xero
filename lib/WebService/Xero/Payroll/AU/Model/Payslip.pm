package Xero::Payroll::AU::Model::Payslip;

use Moo::Role;

has 'EmployeeID' => ( is => 'rw' );
has 'PayslipID' => ( is => 'rw' );
has 'EarningsLines' => ( is => 'rw' );
has 'TimesheetEarningsLines' => ( is => 'rw' );
has 'DeductionLines' => ( is => 'rw' );
has 'LeaveAccrualLines' => ( is => 'rw' );
has 'ReimbursementLines' => ( is => 'rw' );
has 'SuperannuationLines' => ( is => 'rw' );
has 'TaxLines' => ( is => 'rw' );
has 'FirstName' => ( is => 'rw' );
has 'LastName' => ( is => 'rw' );
has 'EmployeeGroup' => ( is => 'rw' );
has 'LastEdited' => ( is => 'rw' );
has 'Wages' => ( is => 'rw' );
has 'Deductions' => ( is => 'rw' );
has 'NetPay' => ( is => 'rw' );
has 'Tax' => ( is => 'rw' );
has 'Super' => ( is => 'rw' );
has 'Reimbursements' => ( is => 'rw' );
has 'LeaveEarningsLines' => ( is => 'rw' );

package EarningsLine;

use Moo;

has 'EarningsRateID' => ( is => 'rw' );
has 'RatePerUnit' => ( is => 'rw' );
has 'NumberOfUnits' => ( is => 'rw' );
has 'FixedAmount' => ( is => 'rw' );

package LeaveEarningsLine;

use Moo;

has 'EarningsRateID' => ( is => 'rw' );
has 'RatePerUnit' => ( is => 'rw' );
has 'NumberOfUnits' => ( is => 'rw' );

package TimesheetEarningsLine;

use Moo;

has 'EarningsRateID' => ( is => 'rw' );
has 'RatePerUnit' => ( is => 'rw' );
has 'Amount' => ( is => 'rw' );

package DeductionLine;

use Moo;

has 'DeductionTypeID' => ( is => 'rw' );
has 'CalculationType' => ( is => 'rw' );
has 'Precentage' => ( is => 'rw' );
has 'NumberOfUnits' => ( is => 'rw' );

package LeaveAccrualLine;

use Moo;

has 'LeaveTypeID' => ( is => 'rw' );
has 'NumberOfUnits' => ( is => 'rw' );
has 'AutoCalculate' => ( is => 'rw' );

package ReimbursementLine;

use Moo;

has 'ReimbusmentTypeID' => ( is => 'rw' );
has 'Description' => ( is => 'rw' );
has 'ExpenseAccount' => ( is => 'rw' );
has 'Amount' => ( is => 'rw' );

package SuperannuationLine;

use Moo;

has 'SuperMembershipID' => ( is => 'rw' );
has 'ContributionType' => ( is => 'rw' );
has 'CalculationType' => ( is => 'rw' );
has 'MinimumMonthlyEarnings' => ( is => 'rw' );
has 'ExpenseAccountCode' => ( is => 'rw' );
has 'LiabilityAccountCode' => ( is => 'rw' );
has 'PaymentDateForThisPeriod' => ( is => 'rw' );
has 'Percentage' => ( is => 'rw' );
has 'Amount' => ( is => 'rw' );

package TaxLine;

use Moo;

has 'TaxTypeName' => ( is => 'rw' );
has 'Description' => ( is => 'rw' );
has 'Amount' => ( is => 'rw' );
has 'LiabilityAccount' => ( is => 'rw' );


1;
