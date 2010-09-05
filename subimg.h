// Image::SubImageFind ($Id$)
#ifndef _SUBIMG_H
#define _SUBIMG_H


#ifndef BOOL
#define BOOL int
#endif

#ifndef TRUE
#define TRUE 1
#endif
#ifndef FALSE
#define FALSE !TRUE
#endif

typedef unsigned char unsigned1;
typedef signed short signed2;
typedef signed long long signed8;

BOOL get_coordinates(char *haystackfile, char *needlefile, int *x, int *y);
signed2* boxaverage(signed2*input, int sx, int sy, int wx, int wy);
void window(signed2 * img, int sx, int sy, int wx, int wy);
signed2* read_image(char* filename, int *sx, int *sy);
void normalize (signed2 * img, int sx, int sy, int wx, int wy);


#endif
