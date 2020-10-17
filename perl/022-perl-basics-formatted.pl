#! /usr/bin/perl

use strict;
use warnings;

use English;

sub formattext(){
    printf "%s %s %24s\n", "ID", "Name", "Address";
    printf "%s\n", '-' x 35;
    printf "%03d ", 1;
    printf "%s%22s\n", "Company", "Street 1";
    printf "%03d ", 2;
    printf "%s%22s\n", "Zukon Ltd", "3rd Avenue";
}

sub main() {
    formattext();
}

main();

__END__