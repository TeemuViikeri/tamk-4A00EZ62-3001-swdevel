5.4 Split a string

    $str = "John,Doe,http://example.com"

    # Display each record (data element) on its own line

    John
    Doe
    http://example.com

#! /usr/bin/perl

use strict;
use warnings;

use English;

sub splitString($) {
    print join("\n", split(/,/, $ARG[0]));
}

sub main() {
    my $str = "John,Doe,http://example.com";
    splitString($str);
}

main();

__END__


