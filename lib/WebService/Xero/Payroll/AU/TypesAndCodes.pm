package Xero::Payroll::AU::TypesAndCodes;

use Locale::SubCountry;
use Moo;
use namespace::clean;

has 'earningstype' => ( 
    is => 'ro'
    default => sub { [qw(FIXED ORDINARYTIMEEARNINGS OVERTIMEEARNINGS ALLOWANCE)] }
);

has 'ratetype' => (
    is => 'ro',
    default => sub { [qw(FIXEDAMOUNT MULTIPLE RATEPERUNIT)] }
);

has 'stateabbreviation' => (
    is => 'ro',
    default => sub { [ Locale::SubCountry('Australia')->new->all_codes ] }
);

has 'employeestatuscode' => (
    is => 'ro',
    default => sub { [qw(ACTIVE TERMINATED)]}
);

1;
