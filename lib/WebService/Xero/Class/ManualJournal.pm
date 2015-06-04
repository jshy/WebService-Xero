package Xero::Class::ManualJournal;

use Moo;
use MooX::ClassAttribute;
with 'Xero::Model::ManualJournal';

class_has 'xml_root' => ( is => 'ro', default => sub { 'ManualJournal' });
class_has 'primary_key => ( is => 'ro', default => sub { 'ManualJournalID' });


1;