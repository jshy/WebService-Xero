package Xero::Payroll::Role::Client;

use Moo::Role;

with 'Xero::Role::Client';

has '+api_path' => ( is => 'ro',  default => sub { 'payroll.xro/1.0' } );

1;
