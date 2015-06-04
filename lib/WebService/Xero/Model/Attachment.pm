package Xero::Model::Attachment;

use Moo::Role;

has 'AttachmentID' => ( is => 'ro' );
has 'FileName' => ( is => 'ro' );
has 'Url' => ( is => 'ro' );
has 'MimeType' => ( is => 'ro' );
has 'ContentLength' => ( is => 'ro' ); 

1;
