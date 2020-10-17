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