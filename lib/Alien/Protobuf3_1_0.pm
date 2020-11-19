package Alien::Protobuf3_1_0;
use 5.006;
use strict;
use warnings;

use base qw( Alien::Base );

our $VERSION = '1.00';

sub cxxflags {''} # not provided

1;
__END__
=pod

=encoding utf-8

=head1 NAME

Alien::Protobuf3_1_0 - libprotobuf version 3.1.0

=head1 SYNOPSIS

    use Alien::Protobuf3_1_0;
    Alien::Protobuf3_1_0->libs;
    Alien::Protobuf3_1_0->cflags;

=head1 DESCRIPTION

The widely-used C<Google::ProtocolBuffers::Dynamic> requires this
version of protobuf, from late 2016, to be able to compile; newer
versions will invariably cause compilation errors.

C<Alien::ProtoBuf> currently provides whatever the system C<libprotobuf>
is, which is unlikely to be a years-old version, so this module
steps in.

=cut
