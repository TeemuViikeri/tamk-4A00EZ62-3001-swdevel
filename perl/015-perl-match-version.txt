1.5 Match program version

    Write single regexp to extract version numbers
    from following lines. The result in `$N' contains
    only numbers and periods. Like "1.1.0.1". Remember
    to analyze how do you know that the line will
    contain a version number and not just any number
    with dots?

        Revision: v1.1.0
        Version is 2.0
        Program release was 23.4.1
        Clock is 12.13                      <= NOK
        Times with Seconds is 13.00.05      <= NOK
        The heading 12.2                    <= NOK
        See chapter 7.6                     <= NOK

    /((?!0{2,})\d+\.)+((?<=(\d\.))0|(?<=(\d\.){2,})\d+)/
    