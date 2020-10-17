2.8 Arrays

    Diplay values from high to low: (4, 1, 3, 2). Hint: you need to
    sort the array.

    https://perldoc.perl.org/perldata.html
    https://perldoc.perl.org/perlfaq4.html#Data%3a-Arrays

    #! /usr/bin/perl

    use strict;
    use warnings;

    use English;

    sub highToLow() {
        my @values = (4, 1, 3, 2);
        my @sorted = sort { $b cmp $a } @values;
        print ("@sorted", "\n");
    }

    sub main() {
        highToLow();
    }

    main();

    __END__
