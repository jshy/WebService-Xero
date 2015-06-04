package Xero::Class::ExpenseClaim;

use Moo;
use MooX::ClassAttribute;

with 'Xero::Model::ExpenseClaim';

class_has 'xml_root' => ( is => 'ro', default => sub { 'ExpenseClaim' });
class_has 'primary_key => ( is => 'ro', default => sub { 'ExpenseClaimID' });

1;