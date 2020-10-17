7.4 Write function to calculate arithmetic sum 1+..N; 1 + 2 + 3 + .. N

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
    7.4 Write function to calculate arithmetic sum 1+..N; 1 + 2 + 3 + .. N
