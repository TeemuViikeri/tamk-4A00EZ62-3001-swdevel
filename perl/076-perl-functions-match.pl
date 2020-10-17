#! /usr/bin/perl

use strict;
use warnings;

use English;

sub searchAllMatches {
    my $char = pop(@ARG);
    my $str = join "", @ARG;

    my @matches = ( $str =~ m/$char/g );
    return @matches;
}

sub main() {
    my @array = ("a", "b", "a", "a", "b");
    my @matches = searchAllMatches(@array, "a");
    print(join(', ', @matches), "\n");
}

main();

__END__