package Xero::Payroll::AU::Model::EarningsRate;

use Moo::Role;

has $_ => ( is => 'rw', predicate => 1, clearer => 1 ) for (qw/
    Name
    AccountCode
    TypeOfUnits
    IsExemptFromTax
    IsExemptFromSuper
    EarningsType
    EarningsRateID
    RateType
    RatePerUnit
    Multiplier
    AccrueLeave
    Amount     
/);

1;
