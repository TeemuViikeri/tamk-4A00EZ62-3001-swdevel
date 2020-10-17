2.6 Arrays

    Store values 1, 2, 3, in an array. Calculate average.

    #! /usr/bin/perl

    use strict;
    use warnings;

    use English;

    sub average() {
        my @values = (1, 2, 3);
        my $sum;

        for ( @values ) {
            $sum += $ARG;
        }

        my $avg = $sum / scalar @values;
        print $avg;
    }

    sub main() {
        average();
    }

    main();

    __END__
