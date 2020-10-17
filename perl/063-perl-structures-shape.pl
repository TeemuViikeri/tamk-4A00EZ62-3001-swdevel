6.3 Write shape U to the screen using nested loops

    Define the size in a single variable before logic.

        $size = 4

    Output with the above value:

        *     *
        *     *
        *     *
        * * * *

    #! /usr/bin/perl

    use strict;
    use warnings;

    use English;

    sub shapeU() {
        my $size = 4;

        for ( my $row = 0; $row < $size; $row++ ) {
            for ( my $col = 0; $col < $size * 2; $col++ ) {
                if ( $row < $size - 1 ) {
                    if ( $col eq 0 or $col eq $size * 2 - 2 ) {
                        print "*";
                    } else {
                        print " ";
                    }
                } else {
                    if ( $col % 2 eq 0 ) {
                        print "*";
                    } else {
                        print " ";
                    }
                }

            }

            print "\n";
        }
    }

    sub main() {
        shapeU();
    }

    main();

    __END__
    6.3 Write shape U to the screen using nested loops

        Define the size in a single variable before logic.

            $size = 4

        Output with the above value:

            *     *
            *     *
            *     *
            * * * *
