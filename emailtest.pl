#!/usr/bin/perl
use strict;
use warnings;

#creating the message first here
use Email::MIME;
my $message = Email::MIME->create(
        header_str => [
                From => 'test@cpaneltestdomain.com',
                To => 'cpanelnoreply@gmail.com',
                Subject => 'Test From Suede',
],
        attributes => {
                encoding => 'quoted-printable',
                charset => 'UTF-8',
},
        body_str => "Hello,\n\nThis is a test email from Suede\nYou can safely ignore it.\n",
);

#fire the message away!

use Email::Sender::Simple qw(sendmail);
sendmail($message);