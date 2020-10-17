#! /usr/bin/perl

use strict;
use warnings;

use English;

sub highToLow() {
    my @values = (4, 1, 3, 2);
    my @sorted = sort { $b cmp $a } @values;
    print ("@sorted", "\n");
}

sub main() {
    highToLow();
}

main();

__END__