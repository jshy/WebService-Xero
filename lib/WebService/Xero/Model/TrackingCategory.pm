package Xero::Model::TrackingCategory;

use Moo::Role;

#class_has 'primary_key' => ( is => 'ro', default => sub { 'TrackingCategoryID' } );

has 'TrackingCategoryID' => ( is => 'ro' );
has 'Name' => ( is => 'rw' );
has 'Status' => ( is => 'rw' );
has 'Options' => ( is => 'rw' );


package Xero::Model::TrackingCategory::Option;

use Moo::Role;

#class_has 'primary_key' => ( is => 'ro', default => sub { 'TrackingOptionID' } );

has 'TrackingOptionID' => ( is => 'ro' );
has 'Name' => ( is => 'rw' );
has 'Status' => ( is => 'rw' );


1;
