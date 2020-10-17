8.1 Reading and formatting data (F1)

    Study to printf() function. With given data, line up everything
    nicely. The data, in a file, contains name, age and height.

        # data.dat

    John Doe 15 155.4
    Mike Monroe 24 179.4
    Geoff Gordon 35 182.1

    => after program output

    John Doe	    15 155.4
    Mike Monroe	    24 179.4
    Geoff Gordon    35 182.1

    You can read input with:

        $ perl program.pl data.txt

    Using program:

        use strict;
        use English;

        sub Main()
        {
            local $ARG;

            while (<>)
            {
                ...
            }
        }

        Main();

    #! /usr/bin/perl

    use strict;
    use warnings;

    use English;

    sub main() {
        local $ARG;

        while (<>) {
            chomp;
            s/\r//;

            my @data = split;
            my $name = "$data[0] $data[1]";
            my $age = $data[2];
            my $height = $data[3];

            printf "%-15s %d %.1f\n", "$name", "$age", "$height";
        }
    }

    main();

    __END__
    8.1 Reading and formatting data (F1)

        Study to printf() function. With given data, line up everything
        nicely. The data, in a file, contains name, age and height.

            # data.dat

        John Doe 15 155.4
        Mike Monroe 24 179.4
        Geoff Gordon 35 182.1

        => after program output

        John Doe        15 155.4
        Mike Monroe     24 179.4
        Geoff Gordon    35 182.1

        You can read input with:

            $ perl program.pl data.txt

        Using program:

            use strict;
            use English;

            sub Main()
            {
                local $ARG;

                while (<>)
                {
                    ...
                }
            }

            Main();
