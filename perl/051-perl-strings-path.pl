#! /usr/bin/perl

use strict;
use warnings;

use English;

sub convertPath($) {
    my $path = $ARG[0];
    $path =~ tr/\//\\/;
    print $path;
}

sub main() {
    convertPath("/path/file.txt");
}

main();

__END__
