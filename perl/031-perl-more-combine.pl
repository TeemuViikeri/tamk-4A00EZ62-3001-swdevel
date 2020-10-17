3.1 Array combine

    Write a program that adds any two lists together producing new list
    that contains *unique* values from each list. _Note:_ the order of
    the values in result list does not matter.

        @a = qw(1 2 3);
        @b = qw(2 3 4 5);

        => Combining @a and @b produces: (1, 2, 3, 4, 5)

    #! /usr/bin/perl

    use strict;
    use warnings;

    use English;

    sub combine() {
        my @a = qw(1 2 3);
        my @b = qw(2 3 4 5);

        # create an empty hash for keys -- remember that there can be only unique keys
        my %seen;
        # populate hash with keys that are @a values -- keys have no values
        @seen{@a} = ();
        # first add @a to @combined, then add @b values to @combined if grep returns true
        my @combined = (@a, grep { !exists $seen{$ARG} } @b);

        print @combined;
    }

    sub main() {
        combine();
    }

    main();

    __END__
