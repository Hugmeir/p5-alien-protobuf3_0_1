#!perl
use 5.006;
use strict;
use warnings;
use Test::More;

plan tests => 1;

BEGIN {
    use_ok( 'Alien::Protobuf3_1_0' ) || print "Bail out!\n";
}

diag( "Testing Alien::Protobuf3_1_0 $Alien::Protobuf3_1_0::VERSION, Perl $], $^X" );
