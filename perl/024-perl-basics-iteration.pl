#! /usr/bin/perl

use strict;
use warnings;

use English;

sub iterate() {
    for (reverse 1 .. 9) {
        print($ARG, "\n");
    }
}

sub main() {
    iterate();
}

main();

__END__
