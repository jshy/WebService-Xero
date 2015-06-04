package Xero::Payroll::AU::PayItems;

use Data::Printer;
use Xero::Payroll::AU::Class::PayItem;
use Moo;
use MooX::ClassAttribute;
use namespace::clean;

with 'Xero::Payroll::Role::Client';

class_has 'endpoint' => ( is => 'ro', init_arg => undef, required => 1, default => 'PayItems' );

has 'model' => (
    is => 'rw',
    builder => sub { Xero::Payroll::AU::Class::PayItem->new },
    handles => 'Xero::Payroll::AU::Model::PayItem'
);

sub get_payitem { $_[0]->model->_find(@_) }

1;
