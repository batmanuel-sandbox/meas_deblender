#include "phObjc.h"
#include "phFramestat.h"
#include "phExtract.h"
#include "phMeasureObj.h"

void phMergePeaks(PEAK* p1, PEAK* p2);

void trace(const char* fmt, ...);

// fake replacements by dstn.

int
phObjcMakeChildrenFake(OBJC *objc,		/* give this OBJC a family */
					   const FIELDPARAMS *fiparams) /* misc. parameters */
	;

int
phFitCellAsPsfFake(OBJC *objc,		/* Object to fit */
	       int color,		/* color of object */
	       const CELL_STATS *stats_obj, /* cell array */
	       const FIELDPARAMS *fiparams, /* describe field */
	       int nannuli,		/* number of annuli to use */
	       int sky_noise_only,	/* only consider sky noise */
	       float *I0,		/* central intensity; can be NULL */
	       float *bkgd);		/* the sky level; can be NULL */