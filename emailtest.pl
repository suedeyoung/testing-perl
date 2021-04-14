#!/usr/bin/perl

$to = 'cpanelnoreply@gmail.com';
$from = 'test@cpaneltestdomain.com';
$subject = 'Test From Suede';
$message = 'Hello, This is a test email from Suede. You can safely ignore this message.';

open(MAIL, "|/usr/sbin/sendmail -t");

# Email Header
print MAIL "To: $to\n";
print MAIL "From: $from\n";
print MAIL "Subject: $subject\n\n";
#Email Body
print MAIL $message;

$result = close(MAIL);
if($result) { print "Email sent!";} else { print "The email didn't not send";}