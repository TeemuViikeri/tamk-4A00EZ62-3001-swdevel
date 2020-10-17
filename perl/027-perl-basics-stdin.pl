2.7 Arrays

    Read values from STDIN user and store them into array. If
    input read "quit", stop reading and display current contents
    of the array.

    References:
    https://perldoc.perl.org/perldata.html
    https://perldoc.perl.org/perlfaq4.html#Data%3a-Arrays

    #! /usr/bin/perl

    use strict;
    use warnings;

    use English;

    sub readAndStore() {
        my @values = ();
        print "Give me some words:\n";

        while (<>) {
            if ($ARG eq "quit\n") {
                last;
            }

            push @values, $ARG;
        }

        print @values;
    }

    sub main() {
        readAndStore();
    }

    main();

    __END__