/* Image::SubImageFind ($Id$)
 *
 * Copyright (C) 2010  Dennis K. Paulsen <ctrondlp@cpan.org>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.

 * You should have received a copy of the GNU General Public License along
 * with this program; if not, write to the Free Software Foundation, Inc.,
 * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
 *
 */
#ifdef __cplusplus
extern "C" {
#endif
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"
#include "subimg.h"
#ifdef __cplusplus
}
#endif 


MODULE = Image::SubImageFind PACKAGE = Image::SubImageFind
PROTOTYPES: DISABLE

void
FindSubImage(haystackFile, needleFile)
	char *haystackFile
    char *needleFile
PREINIT:
	int x = 0;
    int y = 0;
PPCODE:
	if (!get_coordinates(haystackFile, needleFile, &x, &y)) {
		die("Unexpected error has occurred.");
	}
    PUSHs( sv_2mortal(newSViv((IV)x)) );
    PUSHs( sv_2mortal(newSViv((IV)y)) );

