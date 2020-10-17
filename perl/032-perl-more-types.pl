3.2 Array and types of elements

    Write a program that prints all values from a list and the type of
    value. Keep the output nicely aligned.

        my @list = ("one", 2, "three", "and more");

        =>

        one        (string)
        2          (number)
        three      (string)
        and more   (string)

#! /usr/bin/perl

use strict;
use warnings;

use English;
use Scalar::Util qw(looks_like_number);

sub displayTypesOfValues(@) {
    my %types;
    @types{@ARG} = ();
    print ref(@ARG);

    foreach (@ARG) {
        my $isnum = looks_like_number( $ARG );

        if ($isnum eq 1) {
            printf("%-10s (number)\n", "$ARG");
        } else {
            printf("%-10s (string)\n", "$ARG");
        }
    }
}

sub main() {
    my @list = ("one", 2, "three", "and more");
    displayTypesOfValues(@list);
}

main();

__END__
