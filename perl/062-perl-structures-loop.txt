6.2 Use loop to find out chess board square that exceeds 10 000

    The story goes that the inventor of chess board asked to have
    only a modest reward from Maharadza. For the first square, one
    rice. For second square, double the rice. And so on.

    Which square on the board exceeds 10 000? Display square number
    and amount or rice.

    #! /usr/bin/perl

    use strict;
    use warnings;

    use English;

    sub findSquare() {
        my $rice = 1;
        my $square = 1;

        while ($rice < 1_000_000) {
            $square++;
            $rice *= 2;
        }

        print "square number: $square, amout of rice: $rice"
    }

    sub main() {
        findSquare();
    }

    main();

    __END__
    6.2 Use loop to find out chess board square that exceeds 10 000

        The story goes that the inventor of chess board asked to have
        only a modest reward from Maharadza. For the first square, one
        rice. For second square, double the rice. And so on.

        Which square on the board exceeds 10 000? Display square number
        and amount or rice.
