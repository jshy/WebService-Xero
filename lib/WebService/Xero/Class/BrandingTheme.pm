package Xero::Class::BrandingTheme;

use Moo;
use MooX::ClassAttribute;
use namespace::clean;

with 'Xero::Model::BrandingTheme';

class_has 'primary_key' => ( is => 'ro', default => sub { 'BrandingThemeID' });
class_has 'xml_root' => ( is => 'ro', default => sub {'BrandingTheme'});

1;