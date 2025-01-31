#include "common.h"
#include "model.h"

ApiStatus N(UnkBackgroundFunc2)(Evt* script, s32 isInitialCall) {
    if (isInitialCall) {
        mdl_set_all_fog_mode(1);
        *gBgRenderTypePtr = BACKGROUND_RENDER_TYPE_1;
        set_background_color_blend(0, 0, 0, 0);
        script->functionTemp[0] = 0;
    }

    set_background_color_blend(0, 0, 0, script->functionTemp[0]);
    script->functionTemp[0] += 10;

    if (script->functionTemp[0] >= 230) {
        set_background_color_blend(0, 0, 0, 230);
        return ApiStatus_DONE2;
    }

    return ApiStatus_BLOCK;
}
