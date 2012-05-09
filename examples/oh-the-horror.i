%module(package="horror", docstring="") horror

%{
#include <exception>
#include <list>
#include <boost/shared_ptr.hpp>
#include "oh-the-horror.h"
/*
#include "lsst/meas/deblender/Baseline.h"
#include "lsst/afw/table.h"
#include "lsst/afw/detection.h"
 */
#include "lsst/pex/logging.h"
#include "lsst/afw/cameraGeom.h"

%}

%inline %{
namespace lsst { namespace afw {
        namespace detection { }
        namespace image { }
} }
using namespace lsst;
using namespace lsst::afw::image;
using namespace lsst::afw::detection;
%}

%include "lsst/p_lsstSwig.i"
%include "lsst/base.h"                  // PTR(); should be in p_lsstSwig.i

%lsst_exceptions();

%import "lsst/afw/image/imageLib.i"
%import "lsst/afw/detection/detectionLib.i"
 //%include "lsst/afw/image/lsstImageTypes.i"     // Image/Mask types and typedefs

%include "oh-the-horror.h"

%template(HorrorF) Horror<float>;

%template(pairMaskedImageFPtrAndFootprintPtr) std::pair<Horror<float>::MaskedImagePtrT, Horror<float>::FootprintPtrT>;


 //%template(BaselineUtilsF) lsst::meas::deblender::BaselineUtils<float>;
 //%template(MaskedImageFAndFootprint) lsst::meas::deblender::MaskedImageAndFootprint<float>;
 //%template(pairMaskedImageFAndFootprint) std::pair<boost::shared_ptr<lsst::afw::image::MaskedImage<float, lsst::afw::image::MaskPixel, lsst::afw::image::VariancePixel> >, lsst::afw::detection::Footprint>;

/******************************************************************************/
// Local Variables: ***
// eval: (setq indent-tabs-mode nil) ***
// End: ***