# Image::SubImageFind ($Id$)
# 
# Copyright (C) 2010  Dennis K. Paulsen <ctrondlp@cpan.org>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License along
# with this program; if not, write to the Free Software Foundation, Inc.,
# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
#
package Image::SubImageFind;

use 5.010001;
use strict;
use warnings;

require Exporter;
require DynaLoader;
our @ISA = qw(Exporter DynaLoader);


# Items to export into callers namespace by default. Note: do not export
# names by default without a very good reason. Use EXPORT_OK instead.
# Do not simply export all your public functions/methods/constants.
our @EXPORT_OK = qw( 
	FindSubImage
);

our @EXPORT = qw(
	
);

our %EXPORT_TAGS = ( 'all' => \@EXPORT_OK );

our $VERSION = '0.01';

Exporter::export_ok_tags(keys %EXPORT_TAGS);
bootstrap Image::SubImageFind $VERSION;

# Preloaded methods go here.

1;
__END__

=head1 NAME

Image::SubImageFind - Perl extension for locating a sub-image within an image

=head1 SYNOPSIS

  use Image::SubImageFind qw/FindSubImage/;

  #  First parameter is the larger image file (HayStack)
  #  Second parameter is the sub-image file to locate within the larger image (Needle)
  my ($x, $y) = FindSubImage("./haystackfile.png", "./needlefile.jpg");
  if ($x > 0 || $y > 0) {
      print "Found sub-image at: $x X $y\n";
  } else {
      print "Could not find sub-image.\n";
  }
  
=head1 DESCRIPTION

Perl module to aide in locating a sub-image within an image.

=head2 EXPORT

None by default.


=head1 SEE ALSO

Underlying algorithm and originating code by Dr. Werner Van Belle (http://werner.yellowcouch.org/Papers/subimg/index.html)

=head1 AUTHOR

Dennis K. Paulsen, E<lt>ctrondlp@cpan.orgE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2010 by Dennis K. Paulsen

Other portions are copyright their respective owners.

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; version 2 of the License.

=cut
