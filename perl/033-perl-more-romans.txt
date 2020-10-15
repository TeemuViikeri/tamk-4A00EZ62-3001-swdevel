3.3 Hash and roman numerals

    Write a program to *convert* decimal number to a ROMAN numeral.
    Conversion range is 0..20 (decimal)

        3   => III
        5   => V

    Roman numerals in range 1-20 are:

        I II III IV V VI VII VIII IX
        X XI XII XIII XIV .. XX

    #! /usr/bin/perl

    use strict;
    use warnings;

    use English;

    sub convertToRomans() {
        my @arabic = (1..20);
        my @romans = qw(
            I II III IV V
            VI VII VIII IX X
            XI XII XIII XIV XV
            XVI XVII XVIII XIX XX
        );

        my %arabic_romans;
        @arabic_romans{@arabic} = @romans;

        while (<>) {
            chomp;
            my $key = $ARG;

            if ($key < 1 or $key > 20) {
                print "Given number wasn't in range from 1 to 20.";
                last;
            }

            print $arabic_romans{$key} . "\n";
        }
    }

    sub main() {
        convertToRomans();
    }

    main();

    __END__
