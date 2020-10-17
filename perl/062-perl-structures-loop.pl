#! /usr/bin/perl

use strict;
use warnings;

use English;

sub findSquare() {
    my $rice = 1;
    my $square = 1;

    while ($rice < 1_000_000) {
        $square++;
        $rice *= 2;
    }

    print "square number: $square, amout of rice: $rice"
}

sub main() {
    findSquare();
}

main();

__END__