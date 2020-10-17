#! /usr/bin/perl

use strict;
use warnings;

use English;

sub sum() {
    my $start = 1;
    my $end = 9;
    my $nth = 2;
    my $sum;

    for ( my $i = $start; $i <= $end; $i += $nth ) {
        $sum += $i;
    }

    print $sum;
}

sub main() {
    sum();
}

main();

__END__