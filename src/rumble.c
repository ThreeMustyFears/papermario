#include "common.h"
#include "nu/nusys.h"

// TODO: replace nustuff with defines

u16 rumbleMaxDuration = 0;
s32 rumbleButtons = 0;

void reset_max_rumble_duration(void);

void poll_rumble(void) {
    nuContRmbCheck(0);
    nuContRmbModeSet(0, 2);
}

void start_rumble(s32 freq, s32 nframes) {
    if (gGameStatusPtr->demoState == 0) {
        if (rumbleMaxDuration != 0) {
            s32 maxFrames = rumbleMaxDuration * 2;

            if (nframes > maxFrames) {
                nframes = maxFrames;
            }

            if (nuContRmbCheck(0) == 0) {
                nuContRmbModeSet(0, 2);
                nuContRmbStart(0, freq, nframes);
            }
        }
    }
}

void update_max_rumble_duration(void) {
    if (rumbleButtons != gGameStatusPtr->currentButtons[0]) {
        rumbleButtons = gGameStatusPtr->currentButtons[0];
        reset_max_rumble_duration();
    }

    if (rumbleMaxDuration != 0) {
        rumbleMaxDuration--;
    }
}

void reset_max_rumble_duration(void) {
    rumbleMaxDuration = 300;
}
