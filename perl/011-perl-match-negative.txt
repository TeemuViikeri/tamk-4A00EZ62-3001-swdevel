1.1 Match negative voices

    Write one regular expression that matches only
    the negative voice sentences:

        I can do it             # nok
        I cannot do it
        I can not do it
        I can't do it
        i cant do it

    /^.*(not|n't|nt).*$/