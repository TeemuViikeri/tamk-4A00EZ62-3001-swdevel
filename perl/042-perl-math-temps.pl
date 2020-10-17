#! /usr/bin/perl

use strict;
use warnings;

use English;

sub convertTemperature() {
    while (<>) {

        chomp;

        my $temp;
        my $n;

        # F to C: (°F − 32) × 5/9 = °C
        # C to F: (°C × 9/5) + 32 = °F

        if ( $ARG =~ m/^\d+C$/ ) {
            $n = substr $ARG, 0, -1;
            $temp = ($n * 9/5) + 32;
            printf "%.2fC --> %.2fF\n", "$n", "$temp";
        } elsif ( $ARG =~ m/^\d+F?$/ ) {
            if ( substr $ARG, 0, -1 eq "F" ) {
                $n = substr $ARG, 0, -1;
            } else {
                $n = $ARG;
            }

            $temp = ($n - 32) * 5/9;
            printf "%.2fF --> %.2fC\n", "$n", "$temp";
        } else {
            print "Given temperature was invalid.";
        }
    }
}

sub main() {
    convertTemperature();
}

main();

__END__