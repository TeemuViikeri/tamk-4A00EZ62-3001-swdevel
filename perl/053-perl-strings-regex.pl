#! /usr/bin/perl

use strict;
use warnings;

use English;

sub detectNumbers() {
    while (<>) {
        chomp;

        if ($ARG =~ /^\d+$/) {
            print "Number\n";
        } else {
            print "Not a number\n";
        }
    }
}

sub main() {
    detectNumbers();
}

main();

__END__
