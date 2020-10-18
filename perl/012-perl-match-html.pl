#! /usr/bin/perl

use strict;
use warnings;

use English;

sub main() {
    my $i = "<I>italics</I>";
    my $b = "<B>bold</B>";
    my $strong = "<STRONG>strong like bold</STRONG>";
    my $em = "<EM>emphasis like italics</EM>";

    print "It matches!\n" if $i =~ /<(i|b|strong|em)>.*<\/(i|b|strong|em)>/i;
    print "It matches!\n" if $b =~ /<(i|b|strong|em)>.*<\/(i|b|strong|em)>/i;
    print "It matches!\n" if $strong =~ /<(i|b|strong|em)>.*<\/(i|b|strong|em)>/i;
    print "It matches!" if $em =~ /<(i|b|strong|em)>.*<\/(i|b|strong|em)>/i;
}

main();

__END__
