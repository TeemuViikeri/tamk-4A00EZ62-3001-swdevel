2.4 Iteration

    Display descending values 9..1 by using iteration (loop of some
    kind)

    #! /usr/bin/perl

    use strict;
    use warnings;

    use English;

    sub iterate() {
        for (reverse 1 .. 9) {
            print($ARG, "\n");
        }
    }

    sub main() {
        iterate();
    }

    main();

    __END__
