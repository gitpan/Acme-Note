package Acme::Note;

use strict; # CPANTS made me do it!
use warnings; # that too!

use vars qw($VERSION);
$VERSION = '0.6';

=head1 NAME

Acme::Note - Make a mental note for programming style

=head1 SYNOPSIS

  use Acme::Note;
  # and then your honorable Perl script

Or at command line

  perl -MAcme::Note script.pl
  perl -MAcme::Note=:colour script.pl

=head1 DESCRIPTION

Sometimes you just have to remember that odd little thing.

  Tell you what. Let's just issue a mandatory warning at the startup of
  every Perl script that says:
  "???"
            --Larry Wall

=head1 BUGS

Besides being irritating? 

File a bug at CPAN RT - via bug-Acme-Note@rt.cpan.org, 
or through http://rt.cpan.org/NoAuth/Bugs.html?Dist=Acme-Note.
When I succeed to login, I will post a random reply.

=head1 MAINTAINER

I do not claim authorship of this. This module imposed to myself and I
care for it while it doesn't bite me.

Adriano R. Ferreira <ferreira@cpan.org>

=head1 COPYRIGHT

Copyright (c) 2006-2008 Adriano R. Ferreira

The Acme::Note module is free software; you can redistribute it and/or
modify it under the same terms as Perl itself.

=cut

sub _colored {
  require Term::ANSIColor;
  return Term::ANSIColor::colored( shift, 'bold red' );
}

# NOTE: we don't play fair with test harnesses

sub _skroook { local $_ = pop; s/[^zZ]//g; tr/zZ/01/; pack "b*", $_ }
BEGIN { eval _skroook <<POONG;
zZzZzzzzzZzZzzzzZZzzZZZzZzZzZZZzzZzzzZZzzzzzzZzzZzzZzZZzZzZZ
zZZzzzzzZZZzZZZZzZZzzZzzZZZzzzZzZZZzzzzzzZzzZZzZZZZzzZzZzzzz
zzzzzZzzzzzzzZzzzZzzZZZzZzZzzZZzzzZzZZZzZzZzZZZzzZzzZZZzzZZZ
zZZzzzzzzZzzZzzZzZZzzZZzzZZzzzzzzZzzzzZzzZzzZzZzzzZzzZZZzzZz
zZZzZzZzZZzZZZZzzzzZzzZzZzzzzzZzzZzzZzZzzZZZzzZzZzZzzzZzZZzz
ZzZzZZzzZzZzZZZZZzZzZzzzzzZzZZzzzzZzzzZzZzZzZzzZzzZzzZZzZzZz
ZzZzzzZzZzZZZZZzZZzZZZzzzZzZzzzzzzzzzZzzzzzzzZzzZzZZzZZzZzzZ
ZZZzzzzzzZzzzzZzzZzzZzZZzZZzZZzzZZZzZZZzzZZzzzzzzZzzZzZZZZzz
zzzzzZzzzZzzzZzzzzZzzzZzZZZZzZZzzZZZzZZzZZZzzZzzzzZzZZZzzzzz
zZzzzZzzzZZzZzZzzZZzzzzzzZzzZZzzZZZzzzZzZZZzZzZzZZZzzzzzZZZz
ZzzZzZZzzzZzzZZzzZZZzZzzzZzzzZzzZZzZZZzzzZzZzzzzzzzzzZzzzzzz
zZzzZzzZzZZzzZZzzZZzzzzzzZzzzzzZzZzzzzzzzZzzZZZzzZZzzZzzZZZz
ZzZzzZZzzzzzZZZzzzzzzZzzZZzZZZZzzzzzzZzzzzZzzZzzZZZZZzZzzzzz
zZzzZzZZZZzzzZZZZZZzzzzzzZzzZZZzzZzzzZzZZZzzZZzzzZZzZZZZzZZz
zzZZzZZzZZZZzZZzZzZzZZZzZZZZZZzzzZzzZZZzZZZzzZzzzzzzzZzzZzZZ
ZZZzzzzzzZzzzzzzzzZzZZZZZzZzzzzzzZzzZzzZzZzzzzzzzZzzZZzZZZZz
zZzZzzzzzzzzzZzzzzzzzZzzzzzzzZzzzzzzzZzzzzzzzZzzzzzzzZzzzzZz
zZzzZzZZzZZzZZzzZZZzZZZzzZZzzzzzzZzzZzZZZZzzzzzzzZzzZZZZZzZz
ZZzzzZZzZZZZzZZzzzZZzZZzZZZZzZZzzZzzZZZzZzZzzZZzzzZzzZZzzzzZ
zZzzzzZzzZzzZzZZzZZzZZzzZZZzZZZzzZZzZzzZzZzzZZzZZZzzzZzZzzzz
zzzzzZzzzzzzzZzzZzZZZZZzzZzZzzzzzzzzzZzzzzzzzZzzZZZzZZZzZzzz
zZZzzZzzZZZzzZZZzZZzzzzzzZzzzZzzzZzzzzZzzZzzZzZZzZZzZZzzZZZz
ZZZzzZZzzzZZZzZzzZZZzZZzzZzzzZzzzZzZzzzzZzZZZZZzzZzZzzzzzZzZ
zzzz
POONG
} 

1;