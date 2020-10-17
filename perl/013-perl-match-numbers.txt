1.3 Match numbers

    Write regular expression to find all lines
    with numbers in range 1-10, but no numbers beyond
    it (like 20).

        -10             nok
        1               ok
        2               ok
        10              ok
        20              nok
        100             nok
        99              nok

    /^([1-9]|10)$/

