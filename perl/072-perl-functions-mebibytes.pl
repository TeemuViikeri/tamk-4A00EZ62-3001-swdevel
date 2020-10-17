7.2 Write function to convert bytes to mebibytes (MiB; 1024 based)

  #! /usr/bin/perl

  use strict;
  use warnings;

  use English;
  use Math::Trig q(pi);

  sub convertToMebibytes($) {
      return $ARG[0] / 1_048_576;
  }

  sub main() {
      my $mib = convertToMebibytes(1);
      print $mib;
  }

  main();

  __END__
  7.2 Write function to convert bytes to mebibytes (MiB; 1024 based)

