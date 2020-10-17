#! /usr/bin/perl

use strict;
use warnings;

use English;

sub oneToN($) {
    # n(n+1)/2
    my $n = $ARG[0];
    return $n * ( $n + 1 ) / 2;

}

sub main() {
    print oneToN(10);
}

main();

__END__