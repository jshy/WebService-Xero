package Xero::ManualJournals;

use Moo;
use MooX::ClassAttribute;
use namespace::clean;

use Xero::Class::ManualJournal;

with 'Xero::Role::Client';

class_has 'endpoint' => ( is => 'ro', init_arg => undef, required => 1, default => 'ManualJournals' );


# This makes all the Xero Model Contact attributes available as $self->$attr but to_xml wont try to serialize this classes attributes like "url". Do not add attributes in the Xero::Class:Contact or it will try to serialize those.
has 'model' => (
	is => 'rw',
	builder => sub { Xero::Class::ManualJournal->new },
	handles => 'Xero::Model::ManualJournal'
);


sub create_manual_journal { $_[0]->model->_save(@_) }

sub update_manual_journal { $_[0]->model->_save(@_) }

sub get_manual_journal { $_[0]->model->_find(@_) }

1;
