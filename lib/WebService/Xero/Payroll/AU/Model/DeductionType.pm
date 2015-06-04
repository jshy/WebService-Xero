package Xero::Payroll::AU::Model::DeductionType;

use Moo::Role;

has 'Name' => ( is => 'rw' );
has 'AccountCode' => ( is => 'rw' );
has 'ReducesTax' => ( is => 'rw' );
has 'ReducesSuper' => ( is => 'rw' );
has 'DeductionTypeID' => ( is => 'rw' );

1;
