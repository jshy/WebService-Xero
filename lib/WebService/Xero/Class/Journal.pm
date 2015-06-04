package Xero::Class::Journal;

use Moo;
use MooX::ClassAttribute;

with 'Xero::Model::Journal';

class_has 'xml_root' => ( is => 'ro', default => sub { 'Journal' });
class_has 'primary_key => ( is => 'ro', default => sub { 'JournalID' });

1;