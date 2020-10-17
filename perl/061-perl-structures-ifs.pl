#! /usr/bin/perl

use strict;
use warnings;

use English;

sub displayInOrder() {
    my $a = 3;
    my $b = 1;
    my $c = 2;

    my $first;
    my $second;
    my $third;

    if ( $a < $b and $a < $c ) {
        $first = $a;

        if ( $b < $c ) {
            $second = $b;
            $third = $c;
        } else {
            $second = $c;
            $third = $b;
        }
    }

    if ( $b < $a and $b < $c ) {
        $first = $b;

        if ( $a < $c ) {
            $second = $a;
            $third = $c;
        } else {
            $second = $c;
            $third = $a;
        }
    }

    if ( $c < $a and $c < $b ) {
        $first = $c;

        if ( $a < $b ) {
            $second = $a;
            $third = $b;
        } else {
            $second = $b;
            $third = $a;
        }
    }

    print "$first, $second, $third";
}

sub main() {
    displayInOrder();
}

main();

__END__