package Xero::Payroll::AU::Mode::ReimbursmentType;

use Moo::Role;

has 'Name' => ( is => 'rw' );
has 'AccountCode' => ( is => 'rw' );
has 'ReimbursmentTypeID' => ( is => 'rw' );

1;
