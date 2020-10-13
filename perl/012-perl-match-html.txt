1.2 Match HTML tags I, B, strong, em

    Write regular expression to match following
    HTML lines. Try to find only those lines with tag
    names shown below.

        <I>italics</I>
        <B>bold</B>
        <STRONG>Strong like bold</STRONG>
        <EM>emphasis like italics</EM>

    /<(i|b|strong|em)>.*<\/(i|b|strong|em)>/i