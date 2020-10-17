#! /usr/bin/perl

use strict;
use warnings;

use English;

sub solveHypotenusa($ $) {
      # a^2 + b^2 = c^2
      my $bottom = $ARG[0] ** 2;
      my $side = $ARG[1] ** 2;

      my $hypotenusa = sqrt($bottom + $side);
      print "Hypotenusa is: $hypotenusa";
}

sub main() {
      solveHypotenusa(4, 3);
}

main();

__END__
