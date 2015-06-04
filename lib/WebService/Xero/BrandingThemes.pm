package Xero::BrandingThemes;

use Moo;
use MooX::ClassAttribute;
use namespace::clean;


use Xero::Class::BrandingTheme;

with 'Xero::Role::Client';

class_has 'endpoint' => ( is => 'ro', init_arg => undef, required => 1, default => 'BrandingThemes' );

has 'model' => (
	is => 'rw',
	builder => sub { Xero::Class::BrandingTheme->new },
	handles => 'Xero::Model::BrandingTheme'
);

sub get_branding_theme { $_[0]->model->_find(@_) }

1;
