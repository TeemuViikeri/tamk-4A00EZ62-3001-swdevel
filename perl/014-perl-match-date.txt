1.4 Match date in range 1-31

    Write regular expression to find valid date
    range between 1-31.

        2000-01-10
        2000-01-41  nok
        2000-01-04
        2000-06-00  nok
        2000-12-20
        2000-03-21

    /(\d{4})-(0[1-9]|1[0-2])-(0[1-9]|[12]\d|3[01])/