4.3 Round value to nearest integer

    In this exercise you're not allowed to use any built-in round()
    functions but you must implement the logic by yourself (grass roots
    work).

    1.2 => 1
    1.5 => 2
    1.8 => 2

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
