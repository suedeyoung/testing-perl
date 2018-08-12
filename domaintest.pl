#!/usr/bin/perl
use strict;
use warnings; 

print "Please provide the domain that we are looking for:\n";
my $domain = <>;
print "\n";
open FILE, "/etc/userdomains" or die $!;

while(<FILE>) {
    chomp;
        print "$_\n" if( /$domain*/ );
        }
        close FILE;