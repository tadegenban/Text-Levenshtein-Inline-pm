#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"
#include "INLINE.h"


long distance( long a, long b ) {
  return 1;
}

MODULE = Text::Levenshtein::Inline::Inline  PACKAGE = Text::Levenshtein::Inline  

PROTOTYPES: DISABLE


long
distance (a, b)
	long	a
	long	b

