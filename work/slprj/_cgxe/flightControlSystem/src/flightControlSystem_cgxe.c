/* Include files */

#include "flightControlSystem_cgxe.h"
#include "m_ztjPiI7RLagV7ZhT32hq4F.h"

unsigned int cgxe_flightControlSystem_method_dispatcher(SimStruct* S, int_T
  method, void* data)
{
  if (ssGetChecksum0(S) == 3696925981 &&
      ssGetChecksum1(S) == 4045302749 &&
      ssGetChecksum2(S) == 4293687596 &&
      ssGetChecksum3(S) == 2675362124) {
    method_dispatcher_ztjPiI7RLagV7ZhT32hq4F(S, method, data);
    return 1;
  }

  return 0;
}
