package Xero::Payroll::AU::Model::PayItem;

use Moo::Role;

has $_ => ( is => 'rw', predicate => 1, clearer => 1 ) for (qw/EarningsRates DeductionTypes LeaveTypes ReimbursmentTypes/);

1;
