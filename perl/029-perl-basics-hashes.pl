#! /usr/bin/perl

use strict;
use warnings;

use English;

sub displayColors() {
    my %colors = ('RED' => 'FF0000',  'GREEN' => '00FF00',  'BLUE' => '0000FF');

    foreach my $key (keys %colors) {
        my @dec_values = convertHexToDec($colors{$key});
        my $r = $dec_values[0];
        my $g = $dec_values[1];
        my $b = $dec_values[2];

        printf "%-7s %s (%s, %s, %s)\n", "$key", "$colors{$key}", "$r", "$g", "$b";
    }
}

sub convertHexToDec($) {
    my @dec_values;

    my $hex = @ARG[0];
    my @hex_values = ( $hex =~ m/../g );

    foreach (@hex_values) {
        my $dec_value = hex $ARG;
        push @dec_values, $dec_value;
    }

    return @dec_values;
}

sub main() {
    displayColors();
}

main();

__END__