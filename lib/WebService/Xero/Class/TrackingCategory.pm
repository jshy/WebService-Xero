package Xero::Class::TrackingCategory;

use Moo;
use MooX::ClassAttribute;
with 'Xero::Model::TrackingCategory';

class_has 'xml_root' => ( is => 'ro', default => sub { 'TrackingCategory' });
class_has 'primary_key => ( is => 'ro', default => sub { 'TrackingCategoryID' });


1;