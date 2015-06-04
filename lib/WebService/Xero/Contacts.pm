package Xero::Contacts;

use Data::Printer;
use Moo;
use MooX::ClassAttribute;
use namespace::clean;

use Xero::Class::Contact;

with 'Xero::Role::Client';

class_has 'endpoint' => ( is => 'ro', init_arg => undef, required => 1, default => 'Contacts' );

# This makes all the Xero Model Contact attributes available as $self->$attr but to_xml wont try to serialize this classes attributes like "url". Do not add attributes in the Xero::Class:Contact or it will try to serialize those.
has 'model' => (
	is => 'rw',
	builder => sub { Xero::Class::Contact->new },
	handles => 'Xero::Model::Contact'
);

sub create_contact { $_[0]->model->_save(@_) }

sub update_contact { $_[0]->model->_save(@_) }

sub get_contact { $_[0]->model->_find(@_) }

sub archive_contact {...}

1;
