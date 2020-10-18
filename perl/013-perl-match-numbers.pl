#! /usr/bin/perl

use strict;
use warnings;

use English;

sub main() {
    my $a = -10;
    my $b = 1;
    my $c = 2;
    my $d = 10;
    my $e = 20;
    my $f = 100;
    my $g = 99;

    print "$a matches!\n" if $a =~ /^([1-9]|10)$/;
    print "$b matches!\n" if $b =~ /^([1-9]|10)$/;
    print "$c matches!\n" if $c =~ /^([1-9]|10)$/;
    print "$d matches!\n" if $d =~ /^([1-9]|10)$/;
    print "$e matches!\n" if $e =~ /^([1-9]|10)$/;
    print "$f matches!\n" if $f =~ /^([1-9]|10)$/;
    print "$g matches!\n" if $g =~ /^([1-9]|10)$/;
}

main();

__END__
