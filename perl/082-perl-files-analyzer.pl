#! /usr/bin/perl

use strict;
use warnings;

use English;

sub main() {
    my $total = 0;
    my $code = 0;
    my $empty_comments = 0;
    my $file = '';

    while (<>) {
        chomp;
        s/\r//;

        $total++;

        my $line = $ARG;

        if ( $line =~ m/(^#|^\s+$)/ ) {
            $empty_comments++;
        } else {
            $code++;
        }

        if (eof) {
            $file = $ARGV;
        }
    }

    my $codep = $code / $total * 100;
    $codep = sprintf "%.f", $codep;

    my $empty_comments_p = $empty_comments / $total * 100;
    $empty_comments_p = sprintf "%.f", $empty_comments_p;

    printf "File    : %s", "$file\n";
    printf "code    : %3d %% (%d/%d)\n", "$codep", "$code", "$total";
    printf "comments: %3d %% (%d/%d)\n", "$empty_comments_p", "$empty_comments", "$total";
    print  "                 |  |\n";
    print  "                 |  total number of lines\n";
    print  "                 count of lines\n";
}

main();

__END__
