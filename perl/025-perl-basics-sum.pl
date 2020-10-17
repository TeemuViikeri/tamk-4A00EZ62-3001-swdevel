2.5 Iteration and count sum of every Nth value in range N..M

    Define the range in *two* variables and use *additional* varible
    to deine the every Nth element. Iterate over range, and count sum.

    An exmaple:

    1..9 every 2nd         -> 1 + 3 + 5 + 7 + 9

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
