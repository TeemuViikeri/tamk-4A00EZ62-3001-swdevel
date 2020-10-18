#! /usr/bin/perl

use strict;
use warnings;

use English;

sub main() {
    my $str = "I can do it";

    print "It matches!" if $str =~ /^.*(not|n't|nt).*$/;
}

main();

__END__


