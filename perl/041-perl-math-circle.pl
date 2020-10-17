#! /usr/bin/perl

use strict;
use warnings;

use English;
use Math::Trig q(pi);

sub calculateCircleArea($) {
    # A = PI * r^2
    my $area = sprintf("Area: %.2f", pi * $ARG[0] ** 2);
    print $area;
}

sub main() {
    calculateCircleArea(5.5);
}

main();

__END__