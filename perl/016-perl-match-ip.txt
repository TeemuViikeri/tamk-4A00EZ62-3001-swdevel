1.6 Match IP addresses

    Extract valid IP addresses from following text:

        The site's address is 192.168.1.10 and the
        subnet mask is 255.255.0.0. Computer 'helium' is known
        by the address 192.168.1.122. The address 192.999.0.0
        is invalid.

        =>

        192.168.1.10
        255.255.0.0
        192.168.1.122

        /((2[0-5]{1,2}|1\d{1,2}|\d)\.){3}(2[0-5]{1,2}|1\d{1,2}|\d)/