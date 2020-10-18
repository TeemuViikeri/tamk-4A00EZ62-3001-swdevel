#! /usr/bin/perl

use strict;
use warnings;

use English;

sub main() {
    my $date1 = "2000-01-10";
    my $date2 = "2000-01-41";
    my $date3 = "2000-01-04";
    my $date4 = "2000-06-00";
    my $date5 = "2000-12-20";
    my $date6 = "2000-03-21";

    print "$date1 matches!\n" if $date1 =~ /(\d{4})-(0[1-9]|1[0-2])-(0[1-9]|[12]\d|3[01])/;
    print "$date2 matches!\n" if $date2 =~ /(\d{4})-(0[1-9]|1[0-2])-(0[1-9]|[12]\d|3[01])/;
    print "$date3 matches!\n" if $date3 =~ /(\d{4})-(0[1-9]|1[0-2])-(0[1-9]|[12]\d|3[01])/;
    print "$date4 matches!\n" if $date4 =~ /(\d{4})-(0[1-9]|1[0-2])-(0[1-9]|[12]\d|3[01])/;
    print "$date5 matches!\n" if $date5 =~ /(\d{4})-(0[1-9]|1[0-2])-(0[1-9]|[12]\d|3[01])/;
    print "$date6 matches!" if $date6 =~ /(\d{4})-(0[1-9]|1[0-2])-(0[1-9]|[12]\d|3[01])/;
}

main();

__END__
