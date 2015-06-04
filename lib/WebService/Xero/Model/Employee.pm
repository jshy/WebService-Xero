package Xero::Model::Employee;

use Moo::Role;

has 'EmployeeID' => ( is => 'rw' );
has 'Status' => ( is => 'rw' );
has 'FirstName' => ( is => 'rw', required => 1 );
has 'LastName' => ( is => 'rw', required => 1 );
has 'ExternalLink' => ( is => 'rw' );

1;
