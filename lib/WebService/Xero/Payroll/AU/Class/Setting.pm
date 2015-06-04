package Xero::Payroll::AU::Class::Setting;

use Moo;
use MooX::ClassAttribute;

with 'Xero::Payroll::AU::Model::Setting';

class_has 'xml_root' => ( is => 'ro', default => sub { 'Setting' });
class_has 'primary_key' => ( is => 'ro', default => sub { 'SettingID' });

1;

