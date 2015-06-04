package Xero::Model::User;

use Moo::Role;

my @fields = qw/UserID EmailAddress FirstName LastName UpdateDateUTC IsSubscriber OrganisationRole/;

has $_ => ( is => 'ro' ) for ( @fields );

1;
