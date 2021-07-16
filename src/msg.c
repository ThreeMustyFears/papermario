#include "common.h"

#define MSG_ROM_START 0x1B83000

extern s16 gNextMessageBuffer;
extern Gfx D_8014C500[];
extern s32 gMsgBGScrollAmtX;
extern u16 gMsgGlobalWaveCounter;
extern s32 gMsgVarImages; // message images?
extern s32 gMsgBGScrollAmtY;
extern s32 D_80151338;
extern char gMessageBuffers[][1024];
extern u8 gMessageStringVars[3][32];
extern s16 D_80155C98;
extern MessageDrawState* gMessageDrawStatePtr;

extern s32 D_802ED550;
extern s32 D_802ED670;
extern s32 D_802ED970;
extern s32 D_802EE8D0;
extern MessageCharset* gMsgCharsets[5];
extern s32 D_802F39D0;
extern s32* D_802F4560;

s32 _update_message(MessagePrintState*);
void appendGfx_msg_prim_rect(u8 r, u8 g, u8 b, u8 a, u16 ulX, u16 ulY, u16 lrX, u16 lrY);

void clear_character_set(void) {
    D_80155C98 = -1;
}

void clear_printers(void) {
    s32 i;

    for (i = 0; i < ARRAY_COUNT(gMessagePrinters); i++) {
        initialize_printer(&gMessagePrinters[i], 0, 0);
    }

    gMsgBGScrollAmtX = 0;
    gMsgBGScrollAmtY = 0;

    for (i = 0; i < ARRAY_COUNT(gMessageStringVars); i++) {
        gMessageStringVars[i][0] = 0;
    }

    D_80151338 = 0;
    gMsgGlobalWaveCounter = 0;
    load_font(0);
}

// needs rom split around 0x10F1B0
void load_font_data(s32 start, u16 size, s32* dest);
#ifdef NON_MATCHING
void load_font_data(s32 start, u16 size, s32* dest) {
    u8* temp_a0;

    temp_a0 = start + 0x10F1B0;
    dma_copy(temp_a0, temp_a0 + size, dest);
}
#else
INCLUDE_ASM(void, "msg", load_font_data, s32 start, u16 size, s32* dest);
#endif

// Needs symbols for font offsets
#ifdef NON_MATCHING
void load_font(s32 font) {
    if (font != D_80155C98) {
        if (font == 0) {
            load_font_data(0, 0x5100, &D_802EE8D0);
            load_font_data(0x5300, 0x500, &D_802F4560);
        } else if (font == 1) {
            load_font_data(0x5800, 0xF60, &D_802ED970);
            load_font_data(0x6760, 0xB88, &D_802F39D0);
            load_font_data(0x72E8, 0x80, &D_802F4560);
        }
    }
}
#else
INCLUDE_ASM(void, "msg", load_font, s32 font);
#endif
void load_font(s32 font);

void update_messages(void) {
    s32 i;

    gMsgGlobalWaveCounter++;
    if (gMsgGlobalWaveCounter >= 360) {
        gMsgGlobalWaveCounter = 0;
    }

    for (i = 0; i < ARRAY_COUNT(gMessagePrinters); i++) {
        if (gMessagePrinters[i].stateFlags & 2) {
            _update_message(&gMessagePrinters[i]);
        }
    }

    gMsgBGScrollAmtX += 12;
    gMsgBGScrollAmtY -= 12;
    if (gMsgBGScrollAmtX >= 2048) {
        gMsgBGScrollAmtX -= 2048;
    }
    if (gMsgBGScrollAmtY < 0) {
        gMsgBGScrollAmtY += 2048;
    }
}

#ifdef NON_MATCHING
s32 _update_message(MessagePrintState* printer) {
    GameStatus* temp_v0_5;
    f32 temp_f4;
    s32 temp_a1_3;
    s32 temp_v0_2;
    u32 temp_v1;
    u8 temp_v1_2;
    s32 phi_a3;
    s32 phi_a0;
    u8 phi_v0;
    s32 phi_a0_2;
    MessagePrintState* phi_a0_4;
    s32 phi_a1_2;
    s32 phi_s1;
    u8 phi_a1_3;
    s16 phi_v1;
    s32 phi_a0_5;

    printer->effectFrameCounter++;
    if (printer->effectFrameCounter >= 3600) {
        printer->effectFrameCounter = 0;
    }
    temp_f4 = (f32) ((((f64) (f32) printer->initOpenPos.x - 160.0) / 3.8) + 64.0);
    if (temp_f4 < 5.0) {
        temp_f4 = 5.0f;
    } else if (temp_f4 > 122.0) {
        temp_f4 = 122.0f;
    }

    if (temp_f4 >= 2.1474836e9f) {
        printer->unk_51A = ((s8)(temp_f4 - 2.1474836e9f));
    } else {
        printer->unk_51A = temp_f4;
    }

    if (!(printer->stateFlags & 0x40)) {
        if (!(printer->stateFlags & 0x30)) {
            temp_v1_2 = printer->windowState;
            if (temp_v1_2 != 7) {
                if (temp_v1_2 < 8) {
                    if (temp_v1_2 != 5) {
                        phi_s1 = 0;
                    } else {
                        phi_a3 = 0x8000;
                        if (printer->stateFlags & 0x80000) {
                            phi_a3 = 0x8004;
                        }

                        if (((phi_a3 & gGameStatusPtr->pressedButtons)) || ((gGameStatusPtr->currentButtons & 0x4000) != 0)) {
                            printer->windowState = 4;
                            printer->currentPrintDelay = 0;
                            printer->stateFlags |= 0x4;
                            if ((gGameStatusPtr->pressedButtons & 0x8004) != 0) {
                                phi_s1 = 1;
                                sfx_play_sound_with_params(0xC9, 0, 0, 0);
                            } else {
                                if (printer->srcBuffer[printer->srcBufferPos] != 0xFD) {
                                    printer->stateFlags |= 0x104;
                                    if (printer->fontVariant == 0) {
                                        if (printer->srcBuffer[printer->srcBufferPos] == 0xC3) {
                                            phi_a0 = 0xCC;
                                        } else {
block_29:
                                            printer->stateFlags |= 0x184;
                                            phi_a0 = 0xCC;
                                        }
                                    } else {
                                        goto block_29;
                                    }
                                    sfx_play_sound_with_params(phi_a0, 0, 0, 0);
                                }
                                if ((printer->style - 1) < 4U) {
                                    sfx_play_sound_with_params(0xC9, 0, 0, 0);
                                }
                            }
                        } else {
                            if ((gGameStatusPtr->pressedButtons & 0x2000) != 0) {
                                if (!(printer->stateFlags & 0x40000)) {
                                    if (printer->currentLine != 0) {
                                        printer->windowState = 0xB;
                                        printer->unk_4CC = 0;
                                        phi_v0 = printer->currentLine - 1;
                                        phi_a0_2 = 0xCD;
block_44:
                                        printer->unkArraySize = phi_v0;
                                        temp_v0_2 = printer->curLinePos - printer->lineEndPos[phi_v0 & 0xFF];
                                        if (temp_v0_2 < 0) {
                                            temp_v0_2 = -temp_v0_2;
                                        }
                                        printer->unk_4C8 = temp_v0_2;
                                        sfx_play_sound_with_params(phi_a0_2, 0, 0, 0);
                                    }
                                }
                            }
                        }
                    }
                } else if (temp_v1_2 != 8) {
                    if (temp_v1_2 == 0xC) {
                        if (gGameStatusPtr->pressedButtons & 0x4000) {
                            printer->windowState = 0xB;
                            printer->unk_4CC = 0;
                            phi_v0 = printer->currentLine;
                            phi_a0_2 = 0xCC;
                            goto block_44;
                        }
                        if (gGameStatusPtr->pressedButtons & 0x2000) {
                            if (printer->unkArraySize != 0) {
                                printer->windowState = 0xB;
                                printer->unk_4CC = 0;
                                phi_v0 = printer->unkArraySize - 1;
                                phi_a0_2 = 0xCD;
                                goto block_44;
                            }
                        } else {
                            if (gGameStatusPtr->pressedButtons & 0x8000) {
                                printer->windowState = 0xB;
                                printer->unk_4CC = 0;
                                phi_v0 = printer->unkArraySize + 1;
                                phi_a0_2 = 0xCE;
                                goto block_44;
                            }
                        }
                    }
                } else {
block_65:
                    printer->unkCounter++;
                    if ((printer->unkCounter & 0xFF) >= 5U) {
                        printer->windowState = 7;
                        printer->currentOption = printer->targetOption;
                        printer->selectedOption = printer->targetOption;
                    }
                }
            } else {
                if (gGameStatusPtr->pressedButtons & 0x8000) {
                    printer->madeChoice = 1;
                    printer->windowState = 4;
                    printer->unkCounter = 0;
                    printer->stateFlags |= 0x20000;
                    sfx_play_sound_with_params(0xC9, 0, 0, 0);
                } else {
                    if ((printer->cancelOption != 0xFF) && (gGameStatusPtr->pressedButtons & 0x4000)) {
                        if (printer->cancelOption < printer->maxOption) {
                            printer->selectedOption = printer->cancelOption;
                        } else {
                            printer->selectedOption = printer->currentOption;
                        }
                        printer->madeChoice = 1;
                        printer->windowState = 4;
                        printer->unkCounter = 0;
                        printer->currentOption = printer->cancelOption;
                        printer->stateFlags |= 0x20000;
                        sfx_play_sound_with_params(0xCA, 0, 0, 0);
                    }
                    if (gGameStatusPtr->heldButtons & 0x20000) {
                        if (printer->currentOption != printer->maxOption - 1) {
                            printer->targetOption = printer->currentOption + 1;
                            printer->windowState = 8;
                            printer->unkCounter = 1;
                            sfx_play_sound_with_params(0xCA, 0, 0, 0);
                        }
                    } else if (gGameStatusPtr->heldButtons & 0x10000) {
                        if (printer->currentOption != 0) {
                            printer->targetOption = printer->currentOption - 1;
                            printer->windowState = 8;
                            printer->unkCounter = 1;
                            sfx_play_sound_with_params(0xCA, 0, 0, 0);
                        }
                    }
                }
                if (printer->windowState == 8) {
                    goto block_65;
                }
            }
        } else {
            if (!(printer->stateFlags & 0x20)) {
                if (printer->windowState == 5) {
                    if ((gGameStatusPtr->pressedButtons & 0x8000) != 0) {
                        printer->windowState = 4;
                        printer->currentPrintDelay = 0;
                        printer->stateFlags |= 4;
                    }
                }
            }
        }

        if (printer->stateFlags & 4) {
            phi_a1_2 = 0;
            if ((gGameStatusPtr->currentButtons & 0x8000) == 0) {
                printer->stateFlags &= ~0x4;
            }
        }

        do {
            temp_a1_3 = phi_a1_2 + 1;
            if (printer->animTimers[0] > 0) {
                printer->animTimers[0]--;
            }
            phi_a0_4 += 2;
            phi_a1_2 = temp_a1_3;
        } while ((temp_a1_3 < 4) != 0);


        switch (printer->windowState) {
            case 1:
    block_84:
    block_85:
                if (printer->windowState == 1) {
                    printer->windowState = 4;
                    phi_a1_3 = printer->charsPerChunk;
                    printer->currentPrintDelay = 0;
                } else {
                    if (printer->stateFlags & 0x100) {
                        phi_a1_3 = 0xC;
                        printer->currentPrintDelay = 0;
                    }
                    phi_a1_3 = printer->charsPerChunk;
                    if (!(printer->stateFlags & 0x4)) {
                        if (!(printer->stateFlags & 0x30)) {
                            if (gGameStatusPtr->currentButtons & 0x8000) {
                                phi_a1_3 = 6;
                                printer->currentPrintDelay = 0;
                            }
                        }
                    }
                }
                if ((printer->currentPrintDelay == 0) || (printer->currentPrintDelay--, (printer->currentPrintDelay == 0))) {
                    msg_copy_to_print_buffer(printer, phi_a1_3, 0);
                }
                goto block_135;
            case 4:
                temp_v0_5 = gGameStatusPtr;
                if ((temp_v0_5->pressedButtons & 0x8000) | (temp_v0_5->currentButtons & 0x4000)) {
                    if (!(printer->stateFlags & 0x30) && ((phi_s1 & 0xFF) == 0)) {
                        printer->stateFlags |= 0x100;
                        goto block_84;
                    }
                }
                goto block_85;
            case 6:
                if ((gGameStatusPtr->pressedButtons & 0xC000) != 0) {
                    if (!(printer->stateFlags & 0x30)) {
                        printer->stateFlags |= 0x100;
                    }
                }

                printer->curLinePos += printer->unk_464;
                if ((printer->stateFlags & 0x100) || ((!(printer->stateFlags & 0x14)) && ((gGameStatusPtr->currentButtons & 0x8000) != 0))) {
                    printer->curLinePos += 6;
                }

                if (printer->curLinePos >= printer->nextLinePos) {
                    printer->windowState = 4;
                    printer->curLinePos = printer->nextLinePos;
                    printer->stateFlags |= 4;
                    if (((printer->style - 7) < 2U) || (printer->srcBuffer[printer->srcBufferPos] == 0xF1)) {
                        printer->currentPrintDelay = 0;
                    } else {
                        printer->currentPrintDelay = 5;
                    }
                    printer->lineEndPos[printer->currentLine] = printer->unk_462;
                }
                goto block_135;
            case 11:
                printer->unk_4CC++;
                phi_v1 = printer->curLinePos - printer->lineEndPos[printer->unkArraySize];
                if (phi_v1 < 0) {
                    phi_v1 = -phi_v1;
                }
                if (printer->unk_4C8 < 0x11U) {
                    if (phi_v1 < 0xF) {
                        phi_a0_5 = 2;
                        if (!(phi_v1 < 9)) {
                            phi_a0_5 = 3;
                        }
                    } else {
                        phi_a0_5 = 4;
                    }
                } else if (phi_v1 > 96) {
                    phi_a0_5 = 10;
                } else if (phi_v1 > 48) {
                    phi_a0_5 = 9;
                } else if (phi_v1 >= 24) {
                    phi_a0_5 = 7;
                } else if (phi_v1 >= 16) {
                    phi_a0_5 = 5;
                } else {
                    if (phi_v1 >= 8) {
                        phi_a0_5 = 4;
                    }
                    phi_a0_5 = 2;
                    if (!(phi_v1 < 5)) {
                        phi_a0_5 = 3;
                    }
                }

                printer->unk_4CA = phi_a0_5;
                if (printer->lineEndPos[printer->unkArraySize] >= printer->curLinePos) {
                    printer->curLinePos += phi_a0_5;
                    if (printer->curLinePos >= printer->lineEndPos[printer->unkArraySize]) {
                        printer->curLinePos = printer->lineEndPos[printer->unkArraySize];
                        printer->windowState = 0xC;
                        if (printer->unkArraySize == printer->currentLine) {
                            printer->windowState = 5;
                            printer->rewindArrowAnimState = 0;
                            printer->rewindArrowBlinkCounter = 0;
                        }
                    }
                } else {
                    printer->curLinePos -= phi_a0_5;
                    if (printer->lineEndPos[printer->unkArraySize] >= printer->curLinePos) {
                        printer->curLinePos = printer->lineEndPos[printer->unkArraySize];
                        printer->windowState = 0xC;
                    }
                }
            default:
            block_135:
                if (printer->stateFlags & 1) {
                    printer->windowState = 0;
                    printer->stateFlags = 0;

                    if (printer->letterBackgroundImg != NULL) {
                        general_heap_free(printer->letterBackgroundImg);
                    }

                    if (printer->letterBackgroundPal != NULL) {
                        general_heap_free(printer->letterBackgroundPal);
                    }

                    if (printer->letterContentImg != NULL) {
                        general_heap_free(printer->letterContentImg);
                    }

                    if (printer->letterContentPal != NULL) {
                        general_heap_free(printer->letterContentPal);
                    }

                    if (printer->closedWritebackBool != NULL) {
                        *printer->closedWritebackBool = 1;
                        printer->closedWritebackBool = NULL;
                    }
                }
        }
    }
    return printer->windowState;
}
#else
INCLUDE_ASM(s32, "msg", _update_message, MessagePrintState* msgPrintState);
#endif

INCLUDE_ASM(s32, "msg", render_messages);

void msg_play_speech_sound(MessagePrintState* printer, u8 character) {
    f32 volTemp;
    s16 volume;
    s32 pitchShift;
    s32 flag = 1;
    s32 hundred = 100;

    if (printer->stateFlags & 0x800000 && !(printer->delayFlags & 6) && printer->volume != 0) {
        volTemp = (f32)printer->volume / 100.0;
        pitchShift = ((character % 20) * 10) + (printer->speechVolumePitch - hundred);
        volume = ((rand_int(15) + 78) * volTemp);

        if (volume > 255) {
            volume = 255;
        }

        if (character & flag) {
            sfx_play_sound_with_params(printer->speedSoundIDA, volume, printer->speechPan, pitchShift);
        } else {
            sfx_play_sound_with_params(printer->speedSoundIDB, volume, printer->speechPan, pitchShift);
        }
    }
}

INCLUDE_ASM(s32, "msg", msg_copy_to_print_buffer);

void initialize_printer(MessagePrintState* printer, s32 arg1, s32 arg2) {
    s32 i;

    printer->printBufferSize = ARRAY_COUNT(printer->printBuffer);
    printer->printBuffer[0] = 0xFB; // next (TODO: make enum for this)
    printer->printDelayTime = 1;
    printer->charsPerChunk = 1;
    printer->unk_464 = 6;
    printer->srcBuffer = NULL;
    printer->stringID = 0;
    printer->currentPrintDelay = 0;
    printer->windowOffsetPos.x = 0;
    printer->windowOffsetPos.y = 0;
    printer->windowBasePos.x = 0;
    printer->windowBasePos.y = 0;
    printer->rewindArrowAnimState = 0;
    printer->rewindArrowBlinkCounter = 0;
    printer->rewindArrowPos.x = 0;
    printer->rewindArrowPos.y = 0;
    printer->currentLine = 0;
    printer->unkArraySize = 0;
    printer->maxOption = 0;
    printer->madeChoice = 0;
    printer->currentOption = 0;
    printer->selectedOption = 0;
    printer->cancelOption = -1;
    printer->windowState = 0;
    printer->stateFlags = 0;
    printer->delayFlags = 0;
    printer->closedWritebackBool = NULL;
    printer->printBufferPos = 0;
    printer->srcBufferPos = 0;
    printer->font = 0;
    printer->fontVariant = 0;
    printer->effectFrameCounter = 0;
    printer->curLinePos = 0;
    printer->unk_46C = 0;
    printer->lineCount = 0;

    for (i = 0; i < ARRAY_COUNT(printer->animTimers); i++) {
        printer->currentAnimFrame[i] = 0;
        printer->animTimers[i] = -1;
    }

    printer->initOpenPos.x = 160;
    printer->initOpenPos.y = 40;
    printer->speechSoundType = -1;
    printer->speechPan = 64;
    printer->volume = 75;
    printer->rewindArrowBlinkCounter = 0;
    printer->style = 0;
    printer->fadeInCounter = 0;
    printer->openStartPos.x = 0;
    printer->openStartPos.y = 0;
    printer->fadeOutCounter = 0;
    printer->windowSize.y = 0;
    printer->windowSize.x = 0;
    printer->speechVolumePitch = 0;
    printer->speedSoundIDA = 0;
    printer->speedSoundIDB = 0;
    printer->varBufferReadPos = 0;
    printer->currentImageIndex = 0;
    printer->varImageScreenPos.x = 0;
    printer->varImageScreenPos.y = 0;
    printer->varImgHasBorder = 0;
    printer->varImgFinalAlpha = 255;
    printer->varImageDisplayState = 0;
    printer->varImageFadeTimer = 0;
    printer->letterBackgroundImg = NULL;
    printer->letterBackgroundPal = NULL;
    printer->letterContentImg = NULL;
    printer->letterContentPal = NULL;
    printer->sizeScale = 1.0f;
}

void dma_load_string(u32 msgID, void* dest) {
    u8* addr = (u8*) MSG_ROM_START + (msgID >> 14); // (msgID >> 16) * 4
    u8* offset[2]; // start, end

    dma_copy(addr, addr + 4, &offset[0]); // Load section offset

    addr = MSG_ROM_START + offset[0] + (msgID & 0xFFFF) * 4;
    dma_copy(addr, addr + 8, &offset); // Load message start and end offsets

    // Load the msg data
    dma_copy(MSG_ROM_START + offset[0], MSG_ROM_START + offset[1], dest);
}

s32* load_message_to_buffer(s32 stringID) {
    s32* prevBufferPos;

    dma_load_string(stringID, &gMessageBuffers[gNextMessageBuffer]);
    prevBufferPos = gMessageBuffers[gNextMessageBuffer];

    gNextMessageBuffer++;
    if (gNextMessageBuffer >= 2) {
        gNextMessageBuffer = 0;
    }

    return prevBufferPos;
}

MessagePrintState* msg_get_printer_for_string(s32 stringID, s32* donePrintingWriteback) {
    return _msg_get_printer_for_string(stringID, donePrintingWriteback, 0);
}

#ifdef NON_MATCHING
MessagePrintState* _msg_get_printer_for_string(s32 stringID, s32* donePrintingWriteback, s32 arg2) {
    if (stringID != 0) {
        s8* srcBuffer = (s8*) stringID;
        s32 i;

        if (stringID >= 0) {
            srcBuffer = load_message_to_buffer(srcBuffer);
        }

        for (i = 0; i < ARRAY_COUNT(gMessagePrinters); i++) {
            MessagePrintState* printer = &gMessagePrinters[i];

            if (!(printer->stateFlags & 2)) {
                s32 height;
                s32 width;
                s32 maxLineChars;
                s32 numLines;
                s32 maxLinesPerPage;

                initialize_printer(printer, 1, arg2);
                printer->windowState = 1;
                printer->srcBuffer = srcBuffer;
                printer->stringID = stringID;
                printer->stateFlags |= 2;
                get_string_properties(stringID, &height, &width, &maxLineChars, &numLines, &maxLinesPerPage, NULL, 0);
                printer->stringHeight = height;
                printer->stringWidth = width;
                printer->maxLineChars = maxLineChars;
                printer->numLines = numLines;
                printer->maxLinesPerPage = maxLinesPerPage;
                printer->closedWritebackBool = donePrintingWriteback;

                if (donePrintingWriteback != NULL) {
                    *donePrintingWriteback = FALSE;
                }
                return printer;
            }
        }
    }
    return NULL;
}
#else
INCLUDE_ASM(MessagePrintState*, "msg", _msg_get_printer_for_string, s32 stringID, s32* donePrintingWriteback, s32 arg2);
#endif

s32 msg_printer_load_string(s32 stringID, MessagePrintState* printer) {
    s32* buffer;

    if (stringID >= 0) {
        buffer = load_message_to_buffer(stringID);
    } else {
        buffer = (s32*) stringID;
    }

    printer->srcBuffer = buffer;
    printer->srcBufferPos = 0;
    printer->stateFlags &= ~0x40;
    return 1;
}

void msg_printer_set_origin_pos(MessagePrintState* msgPrintState, s16 x, s16 y) {
    msgPrintState->initOpenPos.x = x;
    msgPrintState->initOpenPos.y = y;

    if (msgPrintState->initOpenPos.x < 0) {
        msgPrintState->initOpenPos.x = 0;
    }
    if (msgPrintState->initOpenPos.x > 320) {
        msgPrintState->initOpenPos.x = 320;
    }
    if (msgPrintState->initOpenPos.y < 0) {
        msgPrintState->initOpenPos.y = 0;
    }
    if (msgPrintState->initOpenPos.y > 220) {
        msgPrintState->initOpenPos.y = 220;
    }
}

s32 cancel_message(MessagePrintState* msgPrintState) {
    if ((msgPrintState->stateFlags & 2) == 0) {
        return 0;
    }

    msgPrintState->stateFlags |= 1;
    return 1;
}

void set_message_images(s32* images) {
    gMsgVarImages = images;
}

// loop crap
#ifdef NON_MATCHING
void set_message_string(s32 stringID, s32 index) {
    u8* buffer = stringID;
    u8* mallocSpace = NULL;
    u8* it;
    s32 i;
    s32 new_var;

    if (stringID >= 0) {
        buffer = general_heap_malloc(0x400);
        dma_load_string(stringID, buffer);
        mallocSpace = buffer;
    }

    for (i = 0; i < ARRAY_COUNT(gMessageStringVars[index]); i++) {
        gMessageStringVars[index][i] = buffer[i];
        if (buffer[i] == 0xFD) {
            break;
        }
    }

    if (mallocSpace != NULL) {
        general_heap_free(mallocSpace);
    }
}
#else
INCLUDE_ASM(s32, "msg", set_message_string);
#endif

void set_message_value(s32 value, s32 index) {
    s8 strBuffer[ARRAY_COUNT(gMessageStringVars[index])];
    s8* bufferIt;
    s32 i;

    int_to_string(value, &strBuffer, 10);

    for (i = 0, bufferIt = strBuffer; i < ARRAY_COUNT(gMessageStringVars[index]) - 1; i++) {
        s8 thisChar = bufferIt[i];

        if (thisChar == 0) {
            break;
        }
        gMessageStringVars[index][i] = thisChar - 0x20;
    }
    gMessageStringVars[index][i] = 0xFD;
}

void close_message(MessagePrintState* msgPrintState) {
    msgPrintState->stateFlags &= ~0x40;
}

// so close, just some dumb control flow thing at the beginning
s32 msg_get_print_char_width(s32 character, s32 charset, s32 variation, f32 stringScale, s32 overrideCharWidth, u8 flags);
#ifdef NON_MATCHING
s32 msg_get_print_char_width(s32 character, s32 charset, s32 variation, f32 stringScale, s32 overrideCharWidth, u8 flags) {
    u8* charWidthTable;
    f32 baseWidth;
    f64 charWidth;
    f64 modifier;

    if (character < 0xF0 || (character == 0xF7 || character == 0xF8 || character == 0xF9)) {
        if (overrideCharWidth != 0) {
            baseWidth = overrideCharWidth;
        } else if (flags != 0 && gMsgCharsets[charset]->rasters[variation].charWidthTable != NULL &&
                    character != 0xF7 && character != 0xF8 && character != 0xF9) {
            baseWidth = gMsgCharsets[charset]->rasters[variation].charWidthTable[character];
        } else {
            baseWidth = gMsgCharsets[charset]->rasters[variation].monospaceWidth;
        }

        if (character == 0xF7) {
            charWidth = baseWidth * stringScale;
            modifier = 0.6;
            return charWidth * modifier;
        }
        if (character == 0xF8) {
            charWidth = baseWidth * stringScale;
            return charWidth;
        }
        if (character == 0xF9) {
            charWidth = baseWidth * stringScale;
            modifier = 0.5;
            return charWidth * modifier;
        }
        if (character < 0xF0) {
            return baseWidth * stringScale;
        }
    }
    return 0;
}
#else
INCLUDE_ASM(s32, "msg", msg_get_print_char_width, s32 character, s32 charset, s32 variation, f32 stringScale, s32 overrideCharWidth, u8 flags);
#endif

s32 msg_get_draw_char_width(s32 character, s32 charset, s32 varaition, f32 stringScale, s32 overrideCharWidth, s32 flags);
INCLUDE_ASM(s32, "msg", msg_get_draw_char_width, s32 character, s32 charset, s32 varaition, f32 stringScale, s32 overrideCharWidth, s32 flags);

INCLUDE_ASM(void, "msg", get_string_properties);

s32 get_string_width(s32 stringID, u16 charset) {
    s32 width;

    get_string_properties(stringID, 0, &width, 0, 0, 0, 0, charset);
    return width;
}

s32 get_string_lines(s32 stringID) {
    s32 numLines;

    get_string_properties(stringID, 0, 0, 0, &numLines, 0, 0, 0);
    return numLines;
}

void draw_string(s32 stringID, s32 posX, s32 posY, s32 opacity, s32 palette, s32 style);
INCLUDE_ASM(void, "msg", draw_string, s32 stringID, s32 posX, s32 posY, s32 opacity, s32 palette, s32 style);

INCLUDE_ASM(s32, "msg", msg_update_rewind_arrow);

void msg_draw_rewind_arrow(s32 printerIndex) {
    MessagePrintState* printer = &gMessagePrinters[printerIndex];

    if (printer->rewindArrowBlinkCounter < 6) {
        draw_ci_image_with_clipping(&D_802ED550, 0x18, 0x18, 2, 0, &D_802ED670, printer->rewindArrowPos.x,
                                    printer->rewindArrowPos.y, 0xA, 0xA, 0x12C, 0xDC, 0xFF);
    }

    printer->rewindArrowBlinkCounter++;
    if (printer->rewindArrowBlinkCounter >= 12) {
        printer->rewindArrowBlinkCounter = 0;
    }
}

INCLUDE_ASM(s32, "msg", msg_draw_choice_pointer);


extern MessageNumber gMsgNumbers[2];

INCLUDE_ASM(s32, "msg", draw_digit);

INCLUDE_ASM(void, "msg", draw_number, s32 value, s32 x, s32 y, s32 arg3, s32 palette, s32 opacity, s32 style);

void drawbox_message_delegate(s32 arg0) {
    appendGfx_message(arg0, 0, 0, 0, 0, 4, 0);
}

INCLUDE_ASM(s32, "msg", draw_message_window);

INCLUDE_ASM(s32, "msg", appendGfx_message);


void msg_reset_gfx_state(void) {
    gDPPipeSync(gMasterGfxPos++);
    gSPDisplayList(gMasterGfxPos++, D_8014C500);
}

INCLUDE_ASM(s32, "msg", msg_draw_char);

void msg_draw_prim_rect(u8 r, u8 g, u8 b, u8 a, s32 posX, s32 posY, s32 sizeX, s32 sizeY) {
    u16 lrX = posX + sizeX;
    u16 lrY = posY + sizeY;

    appendGfx_msg_prim_rect(r, g, b, a, posX, posY, lrX, lrY);
}

void appendGfx_msg_prim_rect(u8 r, u8 g, u8 b, u8 a, u16 ulX, u16 ulY, u16 lrX, u16 lrY) {
    gDPPipeSync(gMasterGfxPos++);

    if (a == 255) {
        gDPSetCombineLERP(gMasterGfxPos++, 0, 0, 0, PRIMITIVE, 0, 0, 0, 1, 0, 0, 0, PRIMITIVE, 0, 0, 0, 1);
    } else {
        gDPSetRenderMode(gMasterGfxPos++, G_RM_XLU_SURF, G_RM_XLU_SURF2);
        gDPSetCombineMode(gMasterGfxPos++, G_CC_PRIMITIVE, G_CC_PRIMITIVE);
    }

    gDPSetPrimColor(gMasterGfxPos++, 0, 0, r, g, b, a);
    gDPFillRectangle(gMasterGfxPos++, ulX, ulY, lrX, lrY);
    gDPPipeSync(gMasterGfxPos++);
    gDPSetRenderMode(gMasterGfxPos++, G_RM_TEX_EDGE, G_RM_TEX_EDGE2);

    switch (gMessageDrawStatePtr->unk_29) {
        case 0:
            gDPSetCombineMode(gMasterGfxPos++, G_CC_DECALRGBA, G_CC_DECALRGBA);
            break;
        case 1:
            gDPSetCombineMode(gMasterGfxPos++, G_CC_MODULATEIDECALA_PRIM, G_CC_MODULATEIDECALA_PRIM);
            break;
        default:
            gDPSetCombineMode(gMasterGfxPos++, G_CC_DECALRGBA, G_CC_DECALRGBA);
            break;
    }
}

INCLUDE_ASM(s32, "msg", msg_draw_speech_bubble);

INCLUDE_ASM(s32, "msg", msg_draw_speech_arrow);

INCLUDE_ASM(s32, "msg", msg_draw_frame);

void msg_get_glyph(s32 font, s32 variation, s32 charIndex, s32 palette, MesasgeFontGlyphData* out);
INCLUDE_ASM(void, "msg", msg_get_glyph, s32 font, s32 variation, s32 charIndex, s32 palette, MesasgeFontGlyphData* out);
