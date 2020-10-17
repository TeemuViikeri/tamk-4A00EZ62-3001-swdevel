5.3 Read user input and detect numbers (regexp exercise)

    abd             -> Not a number
    1234            -> Number
    a213            -> Not a number
    123a            -> Not a number

    #! /usr/bin/perl

    use strict;
    use warnings;

    use English;

    sub detectNumbers() {
        while (<>) {
            chomp;

            if ($ARG =~ /^\d+$/) {
                print "Number\n";
            } else {
                print "Not a number\n";
            }
        }
    }

    sub main() {
        detectNumbers();
    }

    main();

    __END__
