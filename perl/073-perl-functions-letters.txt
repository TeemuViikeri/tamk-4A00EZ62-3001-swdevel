7.3 Write function to return letter K, M, G, T based on size

    Return the binary size with one decimal precision; rounded to
    nearest value.

    # See https://en.wikipedia.org/wiki/Binary_prefix
    $size = sizeTypeBinary(1024);      # returns "1.0 KiB"
    $size = sizeTypeBinary(2100);      # returns "2.1 KiB"
    $size = sizeTypeBinary(2_800_000); # returns "2.7 MiB"

    #! /usr/bin/perl

    use strict;
    use warnings;

    use English;

    sub sizeTypeBinary($) {
        my $bytes = $ARG[0];
        my $letter;

        if ( $bytes >= 1_000_000_000_000 ) {
            $bytes /= 1_000_000_000_000;
            $letter = "T";
        } elsif ( $bytes >= 1_000_000_000 ) {
            $bytes /= 1_000_000_000;
            $letter = "G";
        } elsif ( $bytes >= 1_000_000 ) {
            $bytes /= 1_000_000;
            $letter = "M";
        }  elsif ( $bytes >= 1_000 ) {
            $bytes /= 1000;
            $letter = "K";
        }

        return sprintf "%.1f %siB", "$bytes", "$letter";
    }

    sub main() {
        my $size = sizeTypeBinary(1024);
        print $size;
    }

    main();

    __END__
    7.3 Write function to return letter K, M, G, T based on size

        Return the binary size with one decimal precision; rounded to
        nearest value.

        # See https://en.wikipedia.org/wiki/Binary_prefix
        $size = sizeTypeBinary(1024);      # returns "1.0 KiB"
        $size = sizeTypeBinary(2100);      # returns "2.1 KiB"
        $size = sizeTypeBinary(2_800_000); # returns "2.7 MiB"
