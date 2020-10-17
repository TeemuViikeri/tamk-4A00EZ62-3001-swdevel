#! /usr/bin/perl

use strict;
use warnings;

use English;
use Math::Trig q(pi);

sub calculateCircleArea($) {
    my $area = pi * $ARG[0] ** 2;
    return $area;
}

sub main() {
    my $area = calculateCircleArea(5.5);
    printf "%.2f", "$area";
}

main();

__END__