#! /usr/bin/perl

use strict;
use warnings;

use English;

sub convertCase($) {
    my $str = $ARG[0];

    if ( $str =~ m/^[A-Z]+$/g ) {
        print lc $str;
    } elsif ( $str =~ m/^[a-z]+$/g ) {
        print uc $str;
    } else {
        print "Parameter wasn't valid.";
    }
}

sub main() {
    convertCase("Abc");
}

main();

__END__
