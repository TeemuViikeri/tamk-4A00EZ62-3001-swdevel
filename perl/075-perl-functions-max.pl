7.5 Write function to search maximum value from array

    #! /usr/bin/perl

    use strict;
    use warnings;
  
    use English;

    sub searchMax {
        my $ref = $ARG[0];
        my @array = @$ref;

        my @sorted = sort { $b <=> $a } @array;
        return $sorted[0];
    }

    sub main() {
        my @arr = (1, 3, 7, 3, 15, 2);
        print searchMax(\@arr);
    }

    main();

    __END__
    7.5 Write function to search maximum value from array
