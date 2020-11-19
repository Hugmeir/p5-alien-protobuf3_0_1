use 5.006;
use strict;
use warnings;
use ExtUtils::MakeMaker;
use Alien::Build::MM;

my %WriteMakefileArgs = (
    NAME             => 'Alien::Protobuf3_1_0',
    AUTHOR           => q{B Fraser <fraserbn@gmail.com>},
    DISTNAME         => 'Alien-Protobuf3_1_0',
    VERSION_FROM     => 'lib/Alien/Protobuf3_1_0.pm',
    ABSTRACT_FROM    => 'lib/Alien/Protobuf3_1_0.pm',
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.52",
  },
  "PREREQ_PM" => {
    "Alien::Base" => "0.038",
  },
  "PREREQ_PM" => {
    "Alien::Base" => "0.038"
  },
    LICENSE          => 'artistic_2',
    MIN_PERL_VERSION => '5.006',
    TEST_REQUIRES => {
        'Test::More' => '0',
    },
    dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES => 'Alien-Protobuf3_1_0-*' },
);

my $abmm = Alien::Build::MM->new;
%WriteMakefileArgs = $abmm->mm_args(%WriteMakefileArgs);

WriteMakefile(%WriteMakefileArgs);

sub MY::postamble {
  $abmm->mm_postamble;
}
