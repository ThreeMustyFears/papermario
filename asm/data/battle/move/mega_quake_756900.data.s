.include "macro.inc"

.section .data

glabel D_802A1180_756900
.word 0x00000043, 0x00000001, InitTargetIterator, 0x00000043, 0x00000002, SetGoalToTarget, 0x00000000, 0x00000043, 0x00000005, AddGoalPos, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000005, GetGoalPos, 0xFFFFFF81, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000028, 0x00000002, 0xFE363C80, 0x00000020, 0x00000043, 0x00000005, SetGoalPos, 0xFFFFFF81, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x00000002, UseCamPreset, 0x0000001A, 0x00000043, 0x00000003, SetActorSpeed, 0x00000000, 0xF24A8E80, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x00010005, 0x00000043, 0x00000002, PlayerRunToGoal, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000005, SetGoalPos, 0x00000000, 0xFFFFFFDF, 0x00000000, 0x00000000, 0x00000043, 0x00000002, UseCamPreset, 0x0000001A, 0x00000043, 0x00000003, SetActorSpeed, 0x00000000, 0xF24A8E80, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x00010005, 0x00000043, 0x00000002, PlayerRunToGoal, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000002, SetGoalToTarget, 0x00000000, 0x00000043, 0x00000005, AddGoalPos, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000024, 0x00000002, 0xFE363C81, 0x00000000, 0x00000005, 0x00000001, 0x0000000A, 0x00000043, 0x00000003, CheckButtonDown, 0x00040000, 0xFE363C80, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000001, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x00010002, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000027, 0x00000002, 0xFE363C81, 0x00000001, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x0003000D, 0x00000006, 0x00000000, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x0003000D, 0x00000014, 0x00000001, 0xFE363C81, 0x00000018, 0x00000001, 0x00000003, 0x00000008, 0x00000001, 0x00000004, 0x00000018, 0x00000001, 0x00000005, 0x00000008, 0x00000001, 0x00000003, 0x00000018, 0x00000001, 0x00000007, 0x00000008, 0x00000001, 0x00000002, 0x00000018, 0x00000001, 0x00000009, 0x00000008, 0x00000001, 0x00000001, 0x00000018, 0x00000001, 0x0000000B, 0x00000008, 0x00000001, 0x00000000, 0x00000023, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000002, SetGoalToTarget, 0x00000000, 0x00000043, 0x00000005, AddGoalPos, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000024, 0x00000002, 0xFE363C81, 0x00000000, 0x00000005, 0x00000001, 0x0000000A, 0x00000043, 0x00000003, CheckButtonDown, 0x00040000, 0xFE363C80, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000001, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x00010002, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000027, 0x00000002, 0xFE363C81, 0x00000001, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x00030014, 0x00000006, 0x00000000, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x00030014, 0x00000014, 0x00000001, 0xFE363C81, 0x00000018, 0x00000001, 0x00000003, 0x00000008, 0x00000001, 0x00000004, 0x00000018, 0x00000001, 0x00000005, 0x00000008, 0x00000001, 0x00000003, 0x00000018, 0x00000001, 0x00000007, 0x00000008, 0x00000001, 0x00000002, 0x00000018, 0x00000001, 0x00000009, 0x00000008, 0x00000001, 0x00000001, 0x00000018, 0x00000001, 0x0000000B, 0x00000008, 0x00000001, 0x00000000, 0x00000023, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000002, SetGoalToTarget, 0x00000000, 0x00000043, 0x00000005, AddGoalPos, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000024, 0x00000002, 0xFE363C81, 0x00000000, 0x00000005, 0x00000001, 0x0000000A, 0x00000043, 0x00000003, CheckButtonDown, 0x00040000, 0xFE363C80, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000001, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x00010002, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000027, 0x00000002, 0xFE363C81, 0x00000001, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x0003001B, 0x00000006, 0x00000000, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x0003001B, 0x00000014, 0x00000001, 0xFE363C81, 0x00000018, 0x00000001, 0x00000003, 0x00000008, 0x00000001, 0x00000004, 0x00000018, 0x00000001, 0x00000005, 0x00000008, 0x00000001, 0x00000003, 0x00000018, 0x00000001, 0x00000007, 0x00000008, 0x00000001, 0x00000002, 0x00000018, 0x00000001, 0x00000009, 0x00000008, 0x00000001, 0x00000001, 0x00000018, 0x00000001, 0x0000000B, 0x00000008, 0x00000001, 0x00000000, 0x00000023, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000002, UseCamPreset, 0x0000002B, 0x00000043, 0x00000002, SetBattleCamOffsetZ, 0x00000008, 0x00000043, 0x00000001, InitTargetIterator, 0x00000043, 0x00000003, PlaySoundAtActor, 0x00000000, 0x0000010B, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x0003000E, 0x00000008, 0x00000001, 0x00000004, 0x00000043, 0x00000004, func_802A9258_422258, 0x00000000, 0x00000024, 0x00000003, 0x00000043, 0x00000002, func_802695D4, 0x00000000, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x0003000F, 0x00000024, 0x00000002, 0xFE363C81, 0x00000000, 0x00000005, 0x00000001, 0x0000001E, 0x00000008, 0x00000001, 0x00000001, 0x00000043, 0x00000002, func_802695A8, 0xFE363C80, 0x0000000B, 0x00000002, 0xFE363C80, 0x00000000, 0x0000000B, 0x00000002, 0xFE363C81, 0x00000001, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x00030010, 0x00000024, 0x00000002, 0xFE363C81, 0x00000001, 0x00000013, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000003, CheckButtonDown, 0x00040000, 0xFE363C80, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000000, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000006, 0x00000000, 0x00000003, 0x00000001, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000043, 0x00000003, CheckButtonDown, 0x00040000, 0xFE363C80, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000001, 0x00000004, 0x00000001, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x00030011, 0x00000008, 0x00000001, 0x00000003, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x00030012, 0x00000043, 0x00000002, UseCamPreset, 0x0000002C, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000001, func_80276EFC, 0x00000043, 0x00000002, UseCamPreset, 0x00000004, 0x00000043, 0x00000002, MoveBattleCamOver, 0x00000005, 0x00000043, 0x00000001, func_802693F0, 0x00000008, 0x00000001, 0x00000014, 0x00000043, 0x00000002, EnablePlayerBlur, 0xFFFFFFFF, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x00010002, 0x00000008, 0x00000001, 0x00000005, 0x00000043, 0x00000002, SetGoalToHome, 0x00000000, 0x00000043, 0x00000003, SetActorSpeed, 0x00000000, 0xF24A9A80, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x00010005, 0x00000043, 0x00000002, PlayerRunToGoal, 0x00000000, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x00010002, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000001, func_80276EFC, 0x00000043, 0x00000001, func_802693F0, 0x00000008, 0x00000001, 0x00000014, 0x00000043, 0x00000002, EnablePlayerBlur, 0xFFFFFFFF, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x00010002, 0x00000008, 0x00000001, 0x00000005, 0x00000043, 0x00000002, SetGoalToHome, 0x00000000, 0x00000043, 0x00000003, SetActorSpeed, 0x00000000, 0xF24A9A80, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x00010005, 0x00000043, 0x00000002, PlayerRunToGoal, 0x00000000, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x00010002, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000001, func_80276EFC, 0x00000043, 0x00000002, UseCamPreset, 0x0000001D, 0x00000043, 0x00000001, func_802693F0, 0x00000008, 0x00000001, 0x00000014, 0x00000043, 0x00000002, EnablePlayerBlur, 0xFFFFFFFF, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x00010002, 0x00000008, 0x00000001, 0x00000005, 0x00000043, 0x00000002, SetGoalToHome, 0x00000000, 0x00000043, 0x00000003, SetActorSpeed, 0x00000000, 0xF24A9A80, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x00010005, 0x00000043, 0x00000002, PlayerRunToGoal, 0x00000000, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x00010002, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000002, LoadActionCommand, 0x00000002, 0x00000043, 0x00000001, func_802A9000_422AD0, 0x00000046, 0x00000001, D_802A1180_756900, 0x00000043, 0x00000002, SetGoalToTarget, 0x00000000, 0x00000043, 0x00000005, AddGoalPos, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000046, 0x00000001, 0x802A12D4, 0x00000043, 0x00000007, PlayerTestEnemy, 0xFE363C80, 0x00000040, 0x00000000, 0x00000000, 0x00000000, 0x00000010, 0x00000043, 0x00000002, UseCamPreset, 0x0000002B, 0x00000043, 0x00000002, SetBattleCamOffsetZ, 0x00000008, 0x00000043, 0x00000001, InitTargetIterator, 0x00000043, 0x00000003, PlaySoundAtActor, 0x00000000, 0x0000010B, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x0003000E, 0x00000008, 0x00000001, 0x00000004, 0x00000043, 0x00000001, battle_move_mega_quake_IsBerserkerEquipped, 0x0000000B, 0x00000002, 0xFE363C80, 0x00000000, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x0003000F, 0x00000043, 0x00000002, func_80269318, 0xFE363C80, 0x0000000C, 0x00000002, 0xFE363C80, 0x00000002, 0x00000043, 0x00000001, battle_move_mega_quake_IsRightOnEquipped, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000000, 0x00000005, 0x00000001, 0x0000002D, 0x00000008, 0x00000001, 0x00000001, 0x00000043, 0x00000003, CheckButtonDown, 0x00040000, 0xFE363C80, 0x0000000B, 0x00000002, 0xFE363C80, 0x00000000, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000006, 0x00000000, 0x00000013, 0x00000000, 0x00000013, 0x00000000, 0x00000027, 0x00000002, 0xFE363C8D, 0x00000006, 0x00000043, 0x00000004, func_802A9258_422258, 0x00000000, 0xFE363C8D, 0x00000003, 0x00000043, 0x00000002, func_802695D4, 0x00000000, 0x00000024, 0x00000002, 0xFE363C81, 0x00000000, 0x00000005, 0x00000001, 0x0000001E, 0x00000008, 0x00000001, 0x00000001, 0x00000043, 0x00000002, func_802695A8, 0xFE363C80, 0x0000000B, 0x00000002, 0xFE363C80, 0x00000000, 0x0000000B, 0x00000002, 0xFE363C81, 0x00000001, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x00030010, 0x00000024, 0x00000002, 0xFE363C81, 0x00000001, 0x00000013, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000003, CheckButtonDown, 0x00040000, 0xFE363C80, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000000, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000006, 0x00000000, 0x00000003, 0x00000001, 0x00000000, 0x00000043, 0x00000002, func_80269318, 0xFE363C80, 0x0000000C, 0x00000002, 0xFE363C80, 0x00000002, 0x00000008, 0x00000001, 0x00000001, 0x00000043, 0x00000002, GetActionSuccess, 0xFE363C80, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000000, 0x00000004, 0x00000001, 0x00000000, 0x00000013, 0x00000000, 0x00000013, 0x00000000, 0x00000012, 0x00000000, 0x00000043, 0x00000004, func_802A9258_422258, 0x00000000, 0xFE363C81, 0x00000003, 0x00000043, 0x00000002, func_802695D4, 0x00000000, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x0003000F, 0x00000028, 0x00000002, 0xFE363C81, 0x0000000A, 0x00000008, 0x00000001, 0xFE363C81, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x00030010, 0x00000008, 0x00000001, 0x00000005, 0x00000013, 0x00000000, 0x00000043, 0x00000002, func_80269318, 0xFE363C80, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000002, 0x00000043, 0x00000002, func_802692EC, 0x00000003, 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000002, func_80269318, 0xFE363C80, 0x0000000C, 0x00000002, 0xFE363C80, 0x00000002, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000006, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x00030011, 0x00000043, 0x00000003, PlaySoundAtActor, 0x00000000, 0x00002115, 0x00000008, 0x00000001, 0x00000003, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x00030012, 0x00000043, 0x00000003, PlaySoundAtActor, 0x00000000, 0x00002118, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000002, LoadActionCommand, 0x00000002, 0x00000043, 0x00000001, func_802A9000_422AD0, 0x00000046, 0x00000001, D_802A1180_756900, 0x00000043, 0x00000002, SetGoalToTarget, 0x00000000, 0x00000043, 0x00000005, AddGoalPos, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000046, 0x00000001, 0x802A1458, 0x00000043, 0x00000007, PlayerTestEnemy, 0xFE363C80, 0x00000040, 0x00000000, 0x00000000, 0x00000000, 0x00000010, 0x00000043, 0x00000002, UseCamPreset, 0x0000002B, 0x00000043, 0x00000002, SetBattleCamOffsetZ, 0x00000008, 0x00000043, 0x00000001, InitTargetIterator, 0x00000043, 0x00000003, PlaySoundAtActor, 0x00000000, 0x0000010B, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x00030015, 0x00000008, 0x00000001, 0x00000004, 0x00000043, 0x00000001, battle_move_mega_quake_IsBerserkerEquipped, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000001, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x00030016, 0x00000043, 0x00000001, battle_move_mega_quake_IsRightOnEquipped, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000000, 0x00000005, 0x00000001, 0x0000002D, 0x00000008, 0x00000001, 0x00000001, 0x00000043, 0x00000003, CheckButtonDown, 0x00040000, 0xFE363C80, 0x0000000B, 0x00000002, 0xFE363C80, 0x00000000, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000006, 0x00000000, 0x00000013, 0x00000000, 0x00000027, 0x00000002, 0xFE363C8D, 0x00000006, 0x00000043, 0x00000004, func_802A9258_422258, 0x00000000, 0xFE363C8D, 0x00000003, 0x00000043, 0x00000002, func_802695D4, 0x00000000, 0x00000024, 0x00000002, 0xFE363C81, 0x00000000, 0x00000005, 0x00000001, 0x0000001E, 0x00000008, 0x00000001, 0x00000001, 0x00000043, 0x00000002, func_802695A8, 0xFE363C80, 0x0000000B, 0x00000002, 0xFE363C80, 0x00000000, 0x0000000B, 0x00000002, 0xFE363C81, 0x00000001, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x00030017, 0x00000024, 0x00000002, 0xFE363C81, 0x00000001, 0x00000013, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000003, CheckButtonDown, 0x00040000, 0xFE363C80, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000000, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000006, 0x00000000, 0x00000003, 0x00000001, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000043, 0x00000002, GetActionSuccess, 0xFE363C80, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000000, 0x00000004, 0x00000001, 0x00000000, 0x00000013, 0x00000000, 0x00000012, 0x00000000, 0x00000043, 0x00000004, func_802A9258_422258, 0x00000000, 0xFE363C81, 0x00000003, 0x00000043, 0x00000002, func_802695D4, 0x00000000, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x00030016, 0x00000028, 0x00000002, 0xFE363C81, 0x0000000A, 0x00000008, 0x00000001, 0xFE363C81, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x00030017, 0x00000008, 0x00000001, 0x00000005, 0x00000013, 0x00000000, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x00030018, 0x00000043, 0x00000003, PlaySoundAtActor, 0x00000000, 0x00002116, 0x00000008, 0x00000001, 0x00000003, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x00030019, 0x00000043, 0x00000003, PlaySoundAtActor, 0x00000000, 0x00002119, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000002, LoadActionCommand, 0x00000002, 0x00000043, 0x00000001, func_802A9000_422AD0, 0x00000046, 0x00000001, D_802A1180_756900, 0x00000043, 0x00000002, SetGoalToTarget, 0x00000000, 0x00000043, 0x00000005, AddGoalPos, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000046, 0x00000001, 0x802A15DC, 0x00000043, 0x00000007, PlayerTestEnemy, 0xFE363C80, 0x00000040, 0x00000000, 0x00000000, 0x00000000, 0x00000010, 0x00000043, 0x00000002, UseCamPreset, 0x0000002B, 0x00000043, 0x00000002, SetBattleCamOffsetZ, 0x00000008, 0x00000043, 0x00000001, InitTargetIterator, 0x00000043, 0x00000003, PlaySoundAtActor, 0x00000000, 0x0000010B, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x0003001C, 0x00000008, 0x00000001, 0x00000004, 0x00000043, 0x00000001, battle_move_mega_quake_IsBerserkerEquipped, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000001, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x0003001D, 0x00000043, 0x00000001, battle_move_mega_quake_IsRightOnEquipped, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000000, 0x00000005, 0x00000001, 0x0000002D, 0x00000008, 0x00000001, 0x00000001, 0x00000043, 0x00000003, CheckButtonDown, 0x00040000, 0xFE363C80, 0x0000000B, 0x00000002, 0xFE363C80, 0x00000000, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000006, 0x00000000, 0x00000013, 0x00000000, 0x00000027, 0x00000002, 0xFE363C8D, 0x00000006, 0x00000043, 0x00000004, func_802A9258_422258, 0x00000000, 0xFE363C8D, 0x00000003, 0x00000043, 0x00000002, func_802695D4, 0x00000000, 0x00000024, 0x00000002, 0xFE363C81, 0x00000000, 0x00000005, 0x00000001, 0x0000001E, 0x00000008, 0x00000001, 0x00000001, 0x00000043, 0x00000002, func_802695A8, 0xFE363C80, 0x0000000B, 0x00000002, 0xFE363C80, 0x00000000, 0x0000000B, 0x00000002, 0xFE363C81, 0x00000001, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x0003001E, 0x00000024, 0x00000002, 0xFE363C81, 0x00000001, 0x00000013, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000003, CheckButtonDown, 0x00040000, 0xFE363C80, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000000, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000006, 0x00000000, 0x00000003, 0x00000001, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000043, 0x00000002, GetActionSuccess, 0xFE363C80, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000000, 0x00000004, 0x00000001, 0x00000000, 0x00000013, 0x00000000, 0x00000012, 0x00000000, 0x00000043, 0x00000004, func_802A9258_422258, 0x00000000, 0xFE363C81, 0x00000003, 0x00000043, 0x00000002, func_802695D4, 0x00000000, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x0003001D, 0x00000028, 0x00000002, 0xFE363C81, 0x0000000A, 0x00000008, 0x00000001, 0xFE363C81, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x0003001E, 0x00000008, 0x00000001, 0x00000005, 0x00000013, 0x00000000, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x0003001F, 0x00000043, 0x00000003, PlaySoundAtActor, 0x00000000, 0x00002117, 0x00000008, 0x00000001, 0x00000003, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x00030020, 0x00000043, 0x00000003, PlaySoundAtActor, 0x00000000, 0x0000211A, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000003, ChooseNextTarget, 0x0000000A, 0xFE363C80, 0x00000043, 0x00000002, LoadActionCommand, 0x00000002, 0x00000043, 0x00000001, func_802A9000_422AD0, 0x00000046, 0x00000001, 0x802A125C, 0x00000043, 0x00000002, SetGoalToTarget, 0x00000000, 0x00000043, 0x00000005, AddGoalPos, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000046, 0x00000001, 0x802A12D4, 0x00000043, 0x00000002, UseCamPreset, 0x0000002B, 0x00000043, 0x00000002, AddBattleCamZoom, 0x00000050, 0x00000043, 0x00000001, InitTargetIterator, 0x00000043, 0x00000003, PlaySoundAtActor, 0x00000000, 0x0000010B, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x0003000E, 0x00000008, 0x00000001, 0x00000008, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x0003000F, 0x00000043, 0x00000001, battle_move_mega_quake_IsRightOnEquipped, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000000, 0x00000005, 0x00000001, 0x0000002D, 0x00000008, 0x00000001, 0x00000001, 0x00000043, 0x00000003, CheckButtonDown, 0x00040000, 0xFE363C80, 0x0000000B, 0x00000002, 0xFE363C80, 0x00000000, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000006, 0x00000000, 0x00000013, 0x00000000, 0x00000027, 0x00000002, 0xFE363C8D, 0x00000006, 0x00000043, 0x00000004, func_802A9258_422258, 0x00000000, 0xFE363C8D, 0x00000003, 0x00000043, 0x00000002, func_802695D4, 0x00000000, 0x00000024, 0x00000002, 0xFE363C81, 0x00000000, 0x00000005, 0x00000001, 0x0000001E, 0x00000008, 0x00000001, 0x00000001, 0x00000043, 0x00000002, func_802695A8, 0xFE363C80, 0x0000000B, 0x00000002, 0xFE363C80, 0x00000000, 0x0000000B, 0x00000002, 0xFE363C81, 0x00000001, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x00030010, 0x00000024, 0x00000002, 0xFE363C81, 0x00000001, 0x00000013, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000003, CheckButtonDown, 0x00040000, 0xFE363C80, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000000, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000006, 0x00000000, 0x00000003, 0x00000001, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000043, 0x00000002, GetActionSuccess, 0xFE363C80, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000000, 0x00000004, 0x00000001, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000003, PlaySoundAtActor, 0x00000000, 0x00002115, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x00030011, 0x00000008, 0x00000001, 0x00000003, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x00030012, 0x00000043, 0x00000003, PlaySoundAtActor, 0x00000000, 0x00002118, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000003, ChooseNextTarget, 0x0000000A, 0xFE363C80, 0x00000043, 0x00000002, LoadActionCommand, 0x00000002, 0x00000043, 0x00000001, func_802A9000_422AD0, 0x00000046, 0x00000001, 0x802A125C, 0x00000043, 0x00000002, SetGoalToTarget, 0x00000000, 0x00000043, 0x00000005, AddGoalPos, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000046, 0x00000001, 0x802A1458, 0x00000043, 0x00000002, UseCamPreset, 0x0000002B, 0x00000043, 0x00000002, AddBattleCamZoom, 0x00000050, 0x00000043, 0x00000001, InitTargetIterator, 0x00000043, 0x00000003, PlaySoundAtActor, 0x00000000, 0x0000010B, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x00030015, 0x00000008, 0x00000001, 0x00000008, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x00030016, 0x00000043, 0x00000001, battle_move_mega_quake_IsRightOnEquipped, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000000, 0x00000005, 0x00000001, 0x0000002D, 0x00000008, 0x00000001, 0x00000001, 0x00000043, 0x00000003, CheckButtonDown, 0x00040000, 0xFE363C80, 0x0000000B, 0x00000002, 0xFE363C80, 0x00000000, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000006, 0x00000000, 0x00000013, 0x00000000, 0x00000027, 0x00000002, 0xFE363C8D, 0x00000006, 0x00000043, 0x00000004, func_802A9258_422258, 0x00000000, 0xFE363C8D, 0x00000003, 0x00000005, 0x00000001, 0x0000003C, 0x00000008, 0x00000001, 0x00000001, 0x00000043, 0x00000003, CheckButtonDown, 0x00040000, 0xFE363C80, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000000, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000006, 0x00000000, 0x00000003, 0x00000001, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000043, 0x00000002, GetActionSuccess, 0xFE363C80, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000000, 0x00000004, 0x00000001, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000003, PlaySoundAtActor, 0x00000000, 0x00002116, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x00030018, 0x00000008, 0x00000001, 0x00000003, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x00030019, 0x00000043, 0x00000003, PlaySoundAtActor, 0x00000000, 0x00002119, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000003, ChooseNextTarget, 0x0000000A, 0xFE363C80, 0x00000043, 0x00000002, LoadActionCommand, 0x00000002, 0x00000043, 0x00000001, func_802A9000_422AD0, 0x00000046, 0x00000001, 0x802A125C, 0x00000043, 0x00000002, SetGoalToTarget, 0x00000000, 0x00000043, 0x00000005, AddGoalPos, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000046, 0x00000001, 0x802A15DC, 0x00000043, 0x00000002, UseCamPreset, 0x0000002B, 0x00000043, 0x00000002, AddBattleCamZoom, 0x00000050, 0x00000043, 0x00000001, InitTargetIterator, 0x00000043, 0x00000003, PlaySoundAtActor, 0x00000000, 0x0000010B, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x0003001C, 0x00000008, 0x00000001, 0x00000008, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x0003001D, 0x00000043, 0x00000001, battle_move_mega_quake_IsRightOnEquipped, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000000, 0x00000005, 0x00000001, 0x0000002D, 0x00000008, 0x00000001, 0x00000001, 0x00000043, 0x00000003, CheckButtonDown, 0x00040000, 0xFE363C80, 0x0000000B, 0x00000002, 0xFE363C80, 0x00000000, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000006, 0x00000000, 0x00000013, 0x00000000, 0x00000027, 0x00000002, 0xFE363C8D, 0x00000006, 0x00000043, 0x00000004, func_802A9258_422258, 0x00000000, 0xFE363C8D, 0x00000003, 0x00000005, 0x00000001, 0x0000003C, 0x00000008, 0x00000001, 0x00000001, 0x00000043, 0x00000003, CheckButtonDown, 0x00040000, 0xFE363C80, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000000, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000006, 0x00000000, 0x00000003, 0x00000001, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000043, 0x00000002, GetActionSuccess, 0xFE363C80, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000000, 0x00000004, 0x00000001, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000003, PlaySoundAtActor, 0x00000000, 0x00002117, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x0003001F, 0x00000008, 0x00000001, 0x00000003, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x00030020, 0x00000043, 0x00000003, PlaySoundAtActor, 0x00000000, 0x0000211A, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000002, func_802694A4, 0x00000001, 0x00000043, 0x00000004, GetMenuSelection, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000014, 0x00000001, 0xFE363C81, 0x00000016, 0x00000001, 0x00000000, 0x00000024, 0x00000002, 0xFE363C8D, 0x00000050, 0x00000024, 0x00000002, 0xFE363C8E, 0x00000003, 0x00000024, 0x00000002, 0xFE363C8F, 0x00000006, 0x00000046, 0x00000001, 0x802A3238, 0x00000016, 0x00000001, 0x00000001, 0x00000024, 0x00000002, 0xFE363C8D, 0x00000050, 0x00000024, 0x00000002, 0xFE363C8E, 0x00000003, 0x00000024, 0x00000002, 0xFE363C8F, 0x00000006, 0x00000046, 0x00000001, 0x802A3238, 0x00000016, 0x00000001, 0x00000002, 0x00000024, 0x00000002, 0xFE363C8D, 0x00000050, 0x00000024, 0x00000002, 0xFE363C8E, 0x00000003, 0x00000024, 0x00000002, 0xFE363C8F, 0x00000006, 0x00000046, 0x00000001, 0x802A3238, 0x00000023, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000004, GetMenuSelection, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000014, 0x00000001, 0xFE363C81, 0x00000016, 0x00000001, 0x00000000, 0x00000046, 0x00000001, 0x802A28A0, 0x00000016, 0x00000001, 0x00000001, 0x00000046, 0x00000001, 0x802A2BCC, 0x00000016, 0x00000001, 0x00000002, 0x00000046, 0x00000001, 0x802A2E70, 0x00000023, 0x00000000, 0x00000056, 0x00000000, 0x00000008, 0x00000001, 0x00000008, 0x00000043, 0x00000005, GetActorPos, 0x00000000, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000027, 0x00000002, 0xFE363C80, 0x00000018, 0x00000027, 0x00000002, 0xFE363C81, 0x0000000A, 0x00000043, 0x0000000F, PlayEffect, 0x0000001D, 0x00000001, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x0000003C, 0x00000008, 0x00000000, 0x0000001E, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000008, 0x00000001, 0x00000002, 0x00000043, 0x0000000F, PlayEffect, 0x0000001D, 0x00000001, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x0000003C, 0x00000008, 0x00000021, 0x0000001E, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000008, 0x00000001, 0x00000002, 0x00000043, 0x0000000F, PlayEffect, 0x0000001D, 0x00000001, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x0000003C, 0x00000008, 0x00000042, 0x0000001E, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000057, 0x00000000, 0x00000043, 0x00000002, DidActionSucceed, 0xFE363C80, 0x00000014, 0x00000001, 0xFE363C80, 0x00000019, 0x00000001, 0x00000000, 0x00000043, 0x00000002, StartRumble, 0x0000000B, 0x00000056, 0x00000000, 0x00000043, 0x00000005, ShakeCam, 0x00000001, 0x00000000, 0x00000002, 0xF24A7BB4, 0x00000043, 0x00000005, ShakeCam, 0x00000001, 0x00000000, 0x00000005, 0xF24A8080, 0x00000043, 0x00000005, ShakeCam, 0x00000001, 0x00000000, 0x0000000A, 0xF24A8680, 0x00000043, 0x00000005, ShakeCam, 0x00000001, 0x00000000, 0x00000005, 0xF24A8080, 0x00000043, 0x00000005, ShakeCam, 0x00000001, 0x00000000, 0x00000003, 0xF24A7EB4, 0x00000043, 0x00000005, ShakeCam, 0x00000001, 0x00000000, 0x00000004, 0xF24A7CE7, 0x00000043, 0x00000005, ShakeCam, 0x00000001, 0x00000000, 0x00000006, 0xF24A7B1A, 0x00000043, 0x00000005, ShakeCam, 0x00000001, 0x00000000, 0x00000004, 0xF24A7ACD, 0x00000057, 0x00000000, 0x00000056, 0x00000000, 0x00000043, 0x00000005, GetActorPos, 0x00000000, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000027, 0x00000002, 0xFE363C80, 0x00000018, 0x00000027, 0x00000002, 0xFE363C81, 0x0000000A, 0x00000043, 0x0000000F, PlayEffect, 0x0000001D, 0x00000000, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000048, 0x00000008, 0x00000000, 0x0000001E, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000008, 0x00000001, 0x00000005, 0x00000043, 0x0000000F, PlayEffect, 0x0000001D, 0x00000000, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000048, 0x00000008, 0x00000018, 0x0000001E, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000008, 0x00000001, 0x00000005, 0x00000043, 0x0000000F, PlayEffect, 0x0000001D, 0x00000000, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000048, 0x00000008, 0x00000030, 0x0000001E, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000008, 0x00000001, 0x00000005, 0x00000043, 0x0000000F, PlayEffect, 0x0000001D, 0x00000000, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000048, 0x00000008, 0x00000048, 0x0000001E, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000057, 0x00000000, 0x00000056, 0x00000000, 0x00000008, 0x00000001, 0x0000000A, 0x00000043, 0x0000000F, PlayEffect, 0x00000025, 0x00000001, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000057, 0x00000000, 0x0000001C, 0x00000000, 0x00000043, 0x00000002, StartRumble, 0x0000000B, 0x00000056, 0x00000000, 0x00000043, 0x00000005, ShakeCam, 0x00000001, 0x00000000, 0x00000002, 0xF24A7B76, 0x00000043, 0x00000005, ShakeCam, 0x00000001, 0x00000000, 0x00000005, 0xF24A7F4D, 0x00000043, 0x00000005, ShakeCam, 0x00000001, 0x00000000, 0x0000000A, 0xF24A841A, 0x00000043, 0x00000005, ShakeCam, 0x00000001, 0x00000000, 0x00000005, 0xF24A7F4D, 0x00000043, 0x00000005, ShakeCam, 0x00000001, 0x00000000, 0x00000003, 0xF24A7DDD, 0x00000043, 0x00000005, ShakeCam, 0x00000001, 0x00000000, 0x00000004, 0xF24A7C6C, 0x00000043, 0x00000005, ShakeCam, 0x00000001, 0x00000000, 0x00000006, 0xF24A7AFB, 0x00000043, 0x00000005, ShakeCam, 0x00000001, 0x00000000, 0x00000004, 0xF24A7ABE, 0x00000057, 0x00000000, 0x00000056, 0x00000000, 0x00000043, 0x00000005, GetActorPos, 0x00000000, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000027, 0x00000002, 0xFE363C80, 0x00000018, 0x00000027, 0x00000002, 0xFE363C81, 0x0000000A, 0x00000043, 0x0000000F, PlayEffect, 0x0000001D, 0x00000000, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000048, 0x00000008, 0x00000000, 0x0000001E, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000008, 0x00000001, 0x00000005, 0x00000043, 0x0000000F, PlayEffect, 0x0000001D, 0x00000000, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000048, 0x00000008, 0x00000018, 0x0000001E, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000008, 0x00000001, 0x00000005, 0x00000043, 0x0000000F, PlayEffect, 0x0000001D, 0x00000000, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000048, 0x00000008, 0x00000030, 0x0000001E, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000008, 0x00000001, 0x00000005, 0x00000043, 0x0000000F, PlayEffect, 0x0000001D, 0x00000000, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000048, 0x00000008, 0x00000048, 0x0000001E, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000057, 0x00000000, 0x00000056, 0x00000000, 0x00000008, 0x00000001, 0x0000000A, 0x00000043, 0x0000000F, PlayEffect, 0x00000025, 0x00000001, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000057, 0x00000000, 0x00000023, 0x00000000, 0x00000043, 0x00000002, DidActionSucceed, 0xFE363C80, 0x0000000D, 0x00000002, 0xFE363C80, 0x00000000, 0x00000043, 0x00000002, UseCamPreset, 0x0000002E, 0x00000043, 0x00000002, MoveBattleCamOver, 0x00000005, 0x00000008, 0x00000001, 0x0000000F, 0x00000026, 0x00000002, 0xFE363C86, 0xF24A7A80, 0x00000005, 0x00000001, 0x0000000A, 0x00000024, 0x00000002, 0xFE363C84, 0xFE363C83, 0x00000024, 0x00000002, 0xFE363C85, 0xFE363C82, 0x0000002C, 0x00000002, 0xFE363C86, 0xF24B0A80, 0x00000043, 0x00000005, AddVectorPolar, 0xFE363C84, 0xFE363C85, 0xF24F2A80, 0xFE363C86, 0x00000024, 0x00000002, 0xFE363C8A, 0xFE363C8F, 0x00000043, 0x0000000F, PlayEffect, 0x0000005E, 0x00000000, 0xFE363C83, 0x00000001, 0xFE363C82, 0xFE363C84, 0x00000001, 0xFE363C85, 0xF24A8A80, 0x0000001E, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000024, 0x00000002, 0xFE363C8F, 0xFE363C8A, 0x00000006, 0x00000000, 0x00000008, 0x00000001, 0x0000000A, 0x00000012, 0x00000000, 0x00000043, 0x00000002, UseCamPreset, 0x0000002E, 0x00000043, 0x00000002, MoveBattleCamOver, 0x00000032, 0x00000013, 0x00000000, 0x00000043, 0x00000004, GetMenuSelection, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000014, 0x00000001, 0xFE363C81, 0x00000016, 0x00000001, 0x00000000, 0x00000043, 0x00000003, PlaySoundAtActor, 0x00000000, 0x0000211B, 0x00000016, 0x00000001, 0x00000001, 0x00000043, 0x00000003, PlaySoundAtActor, 0x00000000, 0x0000211C, 0x00000016, 0x00000001, 0x00000002, 0x00000043, 0x00000003, PlaySoundAtActor, 0x00000000, 0x0000211D, 0x00000023, 0x00000000, 0x00000008, 0x00000001, 0x0000000A, 0x00000043, 0x00000004, GetMenuSelection, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000014, 0x00000001, 0xFE363C81, 0x00000016, 0x00000001, 0x00000000, 0x00000043, 0x00000003, PlaySoundAtActor, 0x00000000, 0x00002118, 0x00000016, 0x00000001, 0x00000001, 0x00000043, 0x00000003, PlaySoundAtActor, 0x00000000, 0x00002119, 0x00000016, 0x00000001, 0x00000002, 0x00000043, 0x00000003, PlaySoundAtActor, 0x00000000, 0x0000211A, 0x00000023, 0x00000000, 0x00000024, 0x00000002, 0xFE363C89, 0x00000000, 0x00000043, 0x00000001, InitTargetIterator, 0x00000003, 0x00000001, 0x0000000A, 0x00000043, 0x00000002, SetGoalToTarget, 0x00000000, 0x00000043, 0x00000007, PlayerTestEnemy, 0xFE363C80, 0x00200000, 0x0000001D, 0x00000000, 0x00000000, 0x00000010, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000006, 0x00000004, 0x00000001, 0x0000000B, 0x00000013, 0x00000000, 0x00000043, 0x00000002, DidActionSucceed, 0xFE363C80, 0x00000014, 0x00000001, 0xFE363C80, 0x00000019, 0x00000001, 0x00000000, 0x00000043, 0x00000007, PlayerDamageEnemy, 0xFE363C80, 0x38200800, 0x00000019, 0x00000000, 0xFE363C8F, 0x00000070, 0x0000001C, 0x00000000, 0x00000043, 0x00000007, PlayerDamageEnemy, 0xFE363C80, 0x38200800, 0x00000019, 0x00000000, 0xFE363C8E, 0x00000030, 0x00000023, 0x00000000, 0x00000003, 0x00000001, 0x0000000B, 0x00000043, 0x00000003, ChooseNextTarget, 0x00000000, 0xFE363C81, 0x00000027, 0x00000002, 0xFE363C89, 0x00000001, 0x00000043, 0x00000002, GetTargetListLength, 0xFE363C81, 0x0000000C, 0x00000002, 0xFE363C89, 0xFE363C81, 0x00000004, 0x00000001, 0x0000000A, 0x00000013, 0x00000000, 0x00000056, 0x00000000, 0x00000008, 0x00000001, 0x0000000A, 0x00000043, 0x00000004, SetAnimation, 0x00000000, 0x00000000, 0x00010002, 0x00000057, 0x00000000, 0x00000008, 0x00000001, 0x0000000A, 0x00000046, 0x00000001, 0x802A1A68, 0x00000043, 0x00000002, UseCamPreset, 0x00000002, 0x00000002, 0x00000000, 0x00000001, 0x00000000
