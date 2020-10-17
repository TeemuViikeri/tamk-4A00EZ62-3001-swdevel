#! /usr/bin/perl

use strict;
use warnings;

use English;

sub hello() {
    my $hello = 'Hello';
    my $world = 'World';
    my $firstname = 'Teemu';
    my $lastname = 'Viikeri';

    print "$hello $world by $firstname $lastname";
}

sub main() {
    hello();
}

main();

__END__