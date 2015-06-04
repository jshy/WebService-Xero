package Xero::Accounts;

use Moo;
use MooX::ClassAttribute;
use namespace::clean;

use Xero::Class::Account;

with 'Xero::Role::Client';

class_has 'endpoint' => ( is => 'ro', init_arg => undef, required => 1, default => 'Accounts' );


# This makes all the Xero Model Account attributes available as $self->$attr but to_xml wont try to serialize this classes attributes like "url". Do not add attributes in the Xero::Class:Account or it will try to serialize those.
has 'model' => (
	is => 'rw',
	builder => sub { Xero::Class::Account->new },
	handles => 'Xero::Model::Account'
);

sub create_account { $_[0]->model->_save(@_) }

sub get_account { $_[0]->model->_find(@_) }

1;
