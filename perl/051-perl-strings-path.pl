5.1 Convert path from one format to another:

    /path/file.txt  -> \path\file.txt

    #! /usr/bin/perl

    use strict;
    use warnings;

    use English;

    sub convertPath($) {
        my $path = $ARG[0];
        $path =~ tr/\//\\/;
        print $path;
    }

    sub main() {
        convertPath("/path/file.txt");
    }

    main();

    __END__
