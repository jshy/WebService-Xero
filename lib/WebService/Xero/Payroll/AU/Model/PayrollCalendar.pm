package Xero::Payroll::AU::Model::PayrollCalendar;

use Moo::Role;

has 'Name' => ( is => 'rw' );
has 'CalendarType' => ( is => 'rw' );
has 'StartDate' => ( is => 'rw' );
has 'PaymentDate' => ( is => 'rw' );

1;
