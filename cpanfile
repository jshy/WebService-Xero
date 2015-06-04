requires 'perl', '5.008005';
requires 'Moo';
requires 'Moo::Role';
requires 'MooX::ClassAttribute';
requires 'namespace::clean';
requries 'Mojo::Util';
requires 'Mojo::DOM';
requires 'Mojo::Headers';
requires 'Mojo::UserAgent';
requires 'Mojo::URL';
requires 'XML::Simple';
requires 'Path::Tiny';
requires 'Net::OAuth';
requires 'Crypt::OpenSSL::RSA';
requires 'File::Slurp';
requires 'Math::Random::Secure';
requires 'Email::Valid';

on test => sub {
    requires 'Test::More', '0.96';
};
