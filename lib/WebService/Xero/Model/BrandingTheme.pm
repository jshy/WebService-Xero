package Xero::Model::BrandingTheme;

use Moo::Role;

has 'BrandingThemeID' => ( is => 'rw' );
has 'Name' => ( is => 'rw' );
has 'SortOrder' => ( is => 'rw' );
has 'CreatedDateUTC' => ( is => 'rw' );

1;
