package Text::ConvertBinary;

=pod

=head1 NAME

Text::ConvertBinary - Simple binary to UTF-8 text conversion tool

=head1 DESCRIPTION

Handles converting from UTF-8 text to binary and back again.
This is a demo script and not intended for any serious use.

=head1 AUTHOR

Adrian Pennington

=head1 VERSION

1.0

=cut

use strict;
use warnings;

use Config;

our $VERSION = '1.0';

=head1 METHOD

Class constructor

=cut

sub new {
	my $class = shift;
	my $self = bless {}, $class;

	$self->set_template();

	return $self;
}

=head1 METHOD

Detects system endian-ness and sets appropriate pack template

=cut

sub set_template {
	my $self = shift;

	# Detect endian-ness and set pack template
	# Byteorders "1234" and "12345678" are little-endian; "4321" and "87654321" are big-endian
	if ($Config{'byteorder'} eq '1234' || $Config{'byteorder'} eq '12345678') {
		$self->{'template'} = 'b*';
	} else {
		$self->{'template'} = 'B*';
	}
}

=head1 METHOD

Converts ASCII text to binary string

=cut

sub to_binary {
	my ($self, $text) = @_;

	return unpack($self->{'template'}, $text);
}

=head1 METHOD

Converts binary string to ASCII character text

=cut

sub from_binary {
	my ($self, $bits) = @_;

	return pack($self->{'template'}, $bits);
}

1;

