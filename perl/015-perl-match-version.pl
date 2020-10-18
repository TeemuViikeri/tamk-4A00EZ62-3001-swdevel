#! /usr/bin/perl

use strict;
use warnings;

use English;

sub main() {
    my $ver1 = "Revision: v1.1.0";
    my $ver2 = "Version is 2.0";
    my $ver3 = "Program release was 23.4.1";
    my $ver4 = "Clock is 12.13";
    my $ver5 = "Times with Seconds is 13.00.05";
    my $ver6 = "The heading 12.2";
    my $ver7 = "See chapter 7.6";

    print "$ver1 matches!\n" if $ver1 =~ /((?!0{2})\d+\.)+((?<=(\d\.))0|(?<=(\d\.){2})\d+)/;
    print "$ver2 matches!\n" if $ver2 =~ /((?!0{2})\d+\.)+((?<=(\d\.))0|(?<=(\d\.){2})\d+)/;
    print "$ver3 matches!\n" if $ver3 =~ /((?!0{2})\d+\.)+((?<=(\d\.))0|(?<=(\d\.){2})\d+)/;
    print "$ver4 matches!\n" if $ver4 =~ /((?!0{2})\d+\.)+((?<=(\d\.))0|(?<=(\d\.){2})\d+)/;
    print "$ver5 matches!\n" if $ver5 =~ /((?!0{2})\d+\.)+((?<=(\d\.))0|(?<=(\d\.){2})\d+)/; # Don't know why this outputs a match. It shouldn't.
    print "$ver6 matches!\n" if $ver6 =~ /((?!0{2})\d+\.)+((?<=(\d\.))0|(?<=(\d\.){2})\d+)/;
    print "$ver7 matches!" if $ver7 =~ /((?!0{2})\d+\.)+((?<=(\d\.))0|(?<=(\d\.){2})\d+)/;
}

main();

__END__
