#! /usr/bin/perl

use strict;
use warnings;

use English;

sub readAndStore() {
    my @values = ();
    print "Give me some words:\n";

    while (<>) {
        if ($ARG eq "quit\n") {
            last;
        }

        push @values, $ARG;
    }

    print @values;
}

sub main() {
    readAndStore();
}

main();

__END__