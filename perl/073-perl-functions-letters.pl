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
