#! /usr/bin/perl

use strict;
use warnings;

use English;

sub roundToNearest($) {
    my $f = $ARG[0];

    my $integer = substr($f, 0, index($f, '.'));
    my $decimal = substr($f, index($f, '.') + 1);

    if ($decimal < 5) {
        print $integer;
    } else {
        print $integer + 1;
    }
}

sub main() {
    roundToNearest(1.5);
}

main();

__END__
