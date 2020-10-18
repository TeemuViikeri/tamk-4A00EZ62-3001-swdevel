#! /usr/bin/perl

use strict;
use warnings;

use English;

sub main() {
    my $str = "The site's address is 192.168.1.10 and the subnet mask is 255.255.0.0. Computer 'helium' is known by the address 192.168.1.122. The address 192.999.0.0 is invalid.";
    my @matches;
    push @matches, $1 while $str =~ /(((2[0-5]{1,2}|1\d{1,2}|\d)\.){3}(2[0-5]{1,2}|1\d{1,2}|\d))/g;

    print join("\n", @matches);

}

main();

__END__

