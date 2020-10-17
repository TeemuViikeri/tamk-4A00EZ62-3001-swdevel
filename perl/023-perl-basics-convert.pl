2.3 Convert floating point to plain integer

    01.54 -> 1

    #! /usr/bin/perl

    use strict;
    use warnings;

    use English;

    sub convert($){
        printf "%d", @ARG;
    }

    sub main() {
        convert(1.54);
    }

    main();

    __END__
