#include "common.h"
#include "map.h"

ApiStatus N(UnkMoveFunc2)(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    s32 var1 = get_variable(script, *args++);
    s32 var2 = get_variable(script, *args++);
    s32 var3 = get_variable(script, *args++);
    f32 var4 = get_float_variable(script, *args++);

    func_800720B0(6, var1 + 10, var2 + 18, var3, var4, 45);
    func_80070BB0(12, var1 + 10, var2 + 18, var3, var4, 30);

    return ApiStatus_DONE2;
}
