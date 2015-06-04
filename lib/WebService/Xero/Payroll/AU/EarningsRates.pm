package Xero::Payroll::AU::EarningsRates;

use Data::Printer;
use Moo;
use namespace::clean;

extends 'Xero::Payroll::AU::PayItems';

sub find {
    my $self = shift;
    my $items = $self->get_payitem;
    $items->{EarningsRates};
}

1;
