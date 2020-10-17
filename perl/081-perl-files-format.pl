#! /usr/bin/perl

use strict;
use warnings;

use English;

sub main() {
    local $ARG;

    while (<>) {
        chomp;
        s/\r//;

        my @data = split;
        my $name = "$data[0] $data[1]";
        my $age = $data[2];
        my $height = $data[3];

        printf "%-15s %d %.1f\n", "$name", "$age", "$height";
    }
}

main();

__END__