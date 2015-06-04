package Xero::Model::RepeatingInvoice;

## TODO: Look at this and Invoice together, see what can be made into a role.

use Moo::Role;

has '' => ( is => 'rw' );

package Xero::Model::RepeatingInvoice::Schedule;

use Moo::Role;

has 'Period' => ( is => 'rw' );
has 'Unit' => ( is => 'rw' );
has 'DueDate' => ( is => 'rw' );
has 'DueDateType' => ( is => 'rw' );
has 'StartDate' => ( is => 'rw' );
has 'NextScheduledDate' => ( is => 'rw' );
has 'EndDate' => ( is => 'rw' );


package Xero::Model::RepeatingInvoice::LineItem;

use Moo::Role;
# TODO: , 'Viisto::Xero::Role::LineItem';

1;
