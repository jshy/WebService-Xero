package Xero::ContactGroups;

use Moo;
use MooX::ClassAttribute;
use namespace::clean;


use Xero::Class::ContactGroup;

with 'Xero::Role::Client';

class_has 'endpoint' => ( is => 'ro', init_arg => undef, required => 1, default => 'ContactGroups' );


# This makes all the Xero Model Contact attributes available as $self->$attr but to_xml wont try to serialize this classes attributes like "url". Do not add attributes in the Xero::Class:Contact or it will try to serialize those.
has 'model' => (
	is => 'rw',
	builder => sub { Xero::Class::ContactGroup->new },
	handles => 'Xero::Model::ContactGroup'
);


sub create_contact_group { $_[0]->model->_save(@_) }


sub update_contact_group { $_[0]->model->_save(@_) }

sub get_contact_group { $_[0]->model->_find(@_) }

sub delete_contact_group {...} # set contact group status to DELETED
sub delete_contact_from_group {...}
sub delete_all_contacts_from_group {...}



1;

