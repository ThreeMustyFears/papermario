.include "macro.inc"

.section .data

glabel D_802445A0_B62850
.word 0x00000000, 0x001C0018, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00630000, 0x00000043, 0x00000003, EnableNpcShadow, 0xFFFFFFFF, 0x00000000, 0x00000043, 0x00000003, SetNpcAnimation, 0xFFFFFFFF, 0x00450000, 0x00000043, 0x00000003, SetSelfVar, 0x00000000, 0x00000000, 0x00000003, 0x00000001, 0x00000000, 0x00000043, 0x00000003, GetSelfVar, 0x00000000, 0xFE363C80, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000004, 0x00000001, 0x00000000, 0x00000013, 0x00000000, 0x0000004D, 0x00000001, 0x00000000, 0x00000043, 0x00000002, func_802D5830, 0x00000001, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000043, 0x00000004, PlaySoundAtNpc, 0xFFFFFFFF, 0x00000153, 0x00000000, 0x00000043, 0x00000005, GetNpcPos, 0xFFFFFFFF, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x00000003, SetSelfVar, 0x0000000A, 0xFE363C80, 0x00000043, 0x00000003, SetSelfVar, 0x0000000B, 0xFE363C81, 0x00000043, 0x00000003, SetSelfVar, 0x0000000C, 0xFE363C82, 0x00000027, 0x00000002, 0xFE363C80, 0x00000002, 0x00000043, 0x00000005, SetNpcPos, 0xFFFFFFFF, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000008, 0x00000001, 0x00000001, 0x00000028, 0x00000002, 0xFE363C80, 0x00000003, 0x00000043, 0x00000005, SetNpcPos, 0xFFFFFFFF, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000008, 0x00000001, 0x00000001, 0x00000027, 0x00000002, 0xFE363C80, 0x00000002, 0x00000043, 0x00000005, SetNpcPos, 0xFFFFFFFF, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000008, 0x00000001, 0x00000001, 0x00000028, 0x00000002, 0xFE363C80, 0x00000003, 0x00000043, 0x00000005, SetNpcPos, 0xFFFFFFFF, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000008, 0x00000001, 0x00000001, 0x00000027, 0x00000002, 0xFE363C80, 0x00000002, 0x00000043, 0x00000005, SetNpcPos, 0xFFFFFFFF, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000008, 0x00000001, 0x00000001, 0x00000056, 0x00000000, 0x00000008, 0x00000001, 0x0000000A, 0x00000043, 0x00000003, SetNpcAnimation, 0xFFFFFFFF, 0x00450003, 0x00000057, 0x00000000, 0x00000056, 0x00000000, 0x00000008, 0x00000001, 0x00000006, 0x00000043, 0x00000003, InterpPlayerYaw, 0x0000005A, 0x00000000, 0x00000057, 0x00000000, 0x00000043, 0x00000004, SetNpcFlagBits, 0xFFFFFFFF, 0x00000100, 0x00000001, 0x00000043, 0x00000003, EnableNpcShadow, 0xFFFFFFFF, 0x00000001, 0x00000043, 0x00000004, GetPlayerPos, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000027, 0x00000002, 0xFE363C80, 0x00000019, 0x00000028, 0x00000002, 0xFE363C82, 0x00000005, 0x00000043, 0x00000006, NpcJump1, 0xFFFFFFFF, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x0000000F, 0x00000008, 0x00000001, 0x00000004, 0x00000043, 0x00000003, SetNpcAnimation, 0xFFFFFFFF, 0x00450007, 0x00000008, 0x00000001, 0x00000002, 0x00000043, 0x00000002, SetPlayerAnimation, 0x0001002B, 0x00000043, 0x00000002, func_802D5830, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000000, 0x00000043, 0x00000001, StartBattle, 0x00000043, 0x00000003, SetSelfVar, 0x00000000, 0x00000001, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000002, GetBattleOutcome, 0xFE363C80, 0x00000014, 0x00000001, 0xFE363C80, 0x00000016, 0x00000001, 0x00000000, 0x00000043, 0x00000001, DoNpcDefeat, 0x00000016, 0x00000001, 0x00000002, 0x00000043, 0x00000003, SetNpcAnimation, 0xFFFFFFFF, 0x00450005, 0x00000043, 0x00000003, GetSelfVar, 0x0000000A, 0xFE363C80, 0x00000043, 0x00000003, GetSelfVar, 0x0000000B, 0xFE363C81, 0x00000043, 0x00000003, GetSelfVar, 0x0000000C, 0xFE363C82, 0x00000043, 0x00000006, NpcJump1, 0xFFFFFFFF, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000008, 0x00000043, 0x00000003, EnableNpcShadow, 0xFFFFFFFF, 0x00000000, 0x00000043, 0x00000003, SetNpcAnimation, 0xFFFFFFFF, 0x00450000, 0x00000043, 0x00000004, SetNpcFlagBits, 0xFFFFFFFF, 0x00000100, 0x00000000, 0x00000043, 0x00000003, BindNpcAI, 0xFFFFFFFF, 0x802445CC, 0x00000016, 0x00000001, 0x00000003, 0x00000043, 0x00000004, SetEnemyFlagBits, 0xFFFFFFFF, 0x00000010, 0x00000001, 0x00000043, 0x00000002, RemoveNpc, 0xFFFFFFFF, 0x00000023, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x001E001E, 0x00000000, 0x80244958, 0x802445CC, 0x00000000, 0x00000000, 0x8024497C, 0x00000000, 0x00000000, 0x00100000, 0x00000043, 0x00000003, EnableNpcShadow, 0xFFFFFFFF, 0x00000000, 0x00000043, 0x00000003, SetSelfVar, 0x00000000, 0x00000000, 0x00000043, 0x00000003, SetSelfVar, 0x00000001, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000008, 0x00000001, 0x0000002D, 0x00000043, 0x00000003, BindNpcInteract, 0xFFFFFFFF, 0x80244B74, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000003, GetSelfVar, 0x00000001, 0xFE363C80, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000000, 0x00000043, 0x00000003, SetSelfVar, 0x00000001, 0x00000001, 0x00000043, 0x00000004, PlaySoundAtNpc, 0xFFFFFFFF, 0x00002099, 0x00000000, 0x00000043, 0x00000003, SetNpcAnimation, 0xFFFFFFFF, 0x00430000, 0x00000008, 0x00000001, 0x00000001, 0x00000043, 0x00000001, func_802413A0_B5F650, 0x00000043, 0x00000003, SetNpcAnimation, 0xFFFFFFFF, 0x00430001, 0x00000056, 0x00000000, 0x00000043, 0x00000003, BindNpcInteract, 0xFFFFFFFF, 0x00000000, 0x00000044, 0x00000001, 0x80244B44, 0x00000008, 0x00000001, 0x0000002D, 0x00000043, 0x00000003, SetSelfVar, 0x00000001, 0x00000000, 0x00000043, 0x00000003, SetNpcAnimation, 0xFFFFFFFF, 0x00430000, 0x00000057, 0x00000000, 0x00000013, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x0014001C, 0x80244AF8, 0x80244B74, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00630000, 0x00000043, 0x00000003, EnableNpcShadow, 0xFFFFFFFF, 0x00000000, 0x00000043, 0x00000003, SetNpcAnimation, 0xFFFFFFFF, 0x00440001, 0x00000043, 0x00000003, SetSelfVar, 0x00000000, 0x00000000, 0x00000003, 0x00000001, 0x00000000, 0x00000043, 0x00000003, GetSelfVar, 0x00000000, 0xFE363C80, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000004, 0x00000001, 0x00000000, 0x00000013, 0x00000000, 0x0000004D, 0x00000001, 0x00000000, 0x00000043, 0x00000002, func_802D5830, 0x00000001, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000043, 0x00000003, NpcFacePlayer, 0xFFFFFFFF, 0x00000000, 0x00000043, 0x00000003, SetNpcAnimation, 0xFFFFFFFF, 0x00440008, 0x00000008, 0x00000001, 0x0000000F, 0x00000043, 0x00000004, PlaySoundAtNpc, 0xFFFFFFFF, 0x0000209A, 0x00000000, 0x00000008, 0x00000001, 0x0000000A, 0x00000043, 0x00000002, SetPlayerAnimation, 0x0001002B, 0x00000008, 0x00000001, 0x00000005, 0x00000043, 0x00000003, SetNpcAnimation, 0xFFFFFFFF, 0x00440002, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000000, 0x00000043, 0x00000002, func_802D5830, 0x00000000, 0x00000043, 0x00000001, StartBattle, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000003, SetSelfVar, 0x00000000, 0x00000001, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000002, GetBattleOutcome, 0xFE363C80, 0x00000014, 0x00000001, 0xFE363C80, 0x00000016, 0x00000001, 0x00000000, 0x00000043, 0x00000001, DoNpcDefeat, 0x00000016, 0x00000001, 0x00000002, 0x00000043, 0x00000003, BindNpcAI, 0xFFFFFFFF, 0x80244CAC, 0x00000016, 0x00000001, 0x00000003, 0x00000043, 0x00000004, SetEnemyFlagBits, 0xFFFFFFFF, 0x00000010, 0x00000001, 0x00000043, 0x00000002, RemoveNpc, 0xFFFFFFFF, 0x00000023, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x0014001C, 0x00000000, 0x80244E28, 0x80244CAC, 0x00000000, 0x00000000, 0x80244E4C, 0x00000000, 0x00000000, 0x00100000, 0x00440000, 0x00440001, 0x00440002, 0x00440008, 0xFFFFFFFF, 0x00420000, 0x00420003, 0x00420005, 0x00420006, 0x00420007, 0x0042000F, 0x00420010, 0x0042001A, 0x0042001B, 0xFFFFFFFF, 0x00420000, 0xFFFFFFFF, 0x00000043, 0x00000002, GetBattleOutcome, 0xFE363C80, 0x00000014, 0x00000001, 0xFE363C80, 0x00000016, 0x00000001, 0x00000000, 0x00000043, 0x00000002, RemoveNpc, 0xFFFFFFFF, 0x00000016, 0x00000001, 0x00000002, 0x00000043, 0x00000005, SetNpcPos, 0xFFFFFFFF, 0x00000000, 0xFFFFFC18, 0x00000000, 0x00000043, 0x00000002, func_80045900, 0x00000001, 0x00000016, 0x00000001, 0x00000003, 0x00000043, 0x00000004, SetEnemyFlagBits, 0xFFFFFFFF, 0x00000010, 0x00000001, 0x00000043, 0x00000002, RemoveNpc, 0xFFFFFFFF, 0x00000023, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x3FD9999A, 0x00000064, 0x00000001, 0x42C80000, 0x41F00000, 0x00000001, 0x40600000, 0x00000014, 0x00000001, 0x42F00000, 0x00000000, 0x00000001, 0x00000043, 0x00000003, SetSelfVar, 0x00000000, 0x00000000, 0x00000043, 0x00000003, SetSelfVar, 0x00000001, 0x00000005, 0x00000043, 0x00000003, SetSelfVar, 0x00000002, 0x0000000C, 0x00000043, 0x00000003, SetSelfVar, 0x00000003, 0x00000009, 0x00000043, 0x00000002, func_80241F38_B601E8, 0x80245018, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00170016, 0x00000000, 0x00000000, 0x80245048, EnemyNpcHit, 0x00000000, EnemyNpcDefeat, 0x00000000, 0x00000000, 0x00100000, 0x00000043, 0x00000003, EnableNpcShadow, 0xFFFFFFFF, 0x00000000, 0x00000043, 0x00000003, SetSelfVar, 0x00000000, 0x00000004, 0x00000043, 0x00000003, SetSelfVar, 0x00000001, 0x00000016, 0x00000043, 0x00000003, SetSelfVar, 0x00000002, 0x00000028, 0x00000043, 0x00000003, SetSelfVar, 0x00000003, 0x0000001C, 0x00000043, 0x00000003, SetSelfVar, 0x00000004, 0x00000001, 0x00000043, 0x00000003, SetSelfVar, 0x0000000F, 0x00000000, 0x00000043, 0x00000001, jan_08_UnkFunc7, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00080014, 0x00000000, 0x00000000, 0x802450E4, 0x00000000, 0x00000000, 0x80244F5C, 0x00000000, 0x00000000, 0x00100008, 0x00000024, 0x00000002, 0xF9718882, 0x00000000, 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000004, PlaySoundAtNpc, 0x00000007, 0x000001F0, 0x00000000, 0x00000008, 0x00000001, 0x00000014, 0x0000000A, 0x00000002, 0xF9718882, 0x00000001, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000006, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000003, SetSelfVar, 0x00000000, 0x00000000, 0x00000003, 0x00000001, 0x00000000, 0x00000043, 0x00000004, GetPlayerPos, 0xFE363C81, 0xFE363C82, 0xFE363C83, 0x0000000E, 0x00000002, 0xFE363C81, 0xFFFFFFA6, 0x0000000D, 0x00000002, 0xFE363C83, 0x00000118, 0x00000043, 0x00000002, GetEntryID, 0xFE363C80, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000000, 0x00000008, 0x00000001, 0x00000012, 0x00000013, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000043, 0x00000004, ShowMessageAtScreenPos, 0x001000AF, 0x000000A0, 0x00000028, 0x00000044, 0x00000001, 0x802451B8, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000000, 0x00000024, 0x00000002, 0xFE363C80, 0x00000001, 0x00000013, 0x00000000, 0x00000013, 0x00000000, 0x0000000B, 0x00000002, 0xFE363C80, 0x00000001, 0x00000008, 0x00000001, 0x00000001, 0x00000004, 0x00000001, 0x00000000, 0x00000013, 0x00000000, 0x00000003, 0x00000001, 0x0000000A, 0x00000043, 0x00000003, GetSelfVar, 0x00000000, 0xFE363C80, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000004, 0x00000001, 0x0000000A, 0x00000013, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000043, 0x00000007, AdjustCam, 0x00000000, 0xF24A8A80, 0xFFFFFFE9, 0x0000015E, 0xF24ABE80, 0xF24A5E80, 0x00000043, 0x00000003, NpcFacePlayer, 0xFFFFFFFF, 0x00000000, 0x00000043, 0x00000002, GetCurrentPartnerID, 0xFE363C80, 0x00000024, 0x00000002, 0xF9718882, 0x00000001, 0x00000008, 0x00000001, 0x0000000F, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000007, 0x00000043, 0x00000006, SpeakToPlayer, 0xFFFFFFFF, 0x0097040B, 0x0097040A, 0x00000000, 0x001000B0, 0x00000012, 0x00000000, 0x00000043, 0x00000006, SpeakToPlayer, 0xFFFFFFFF, 0x0097040B, 0x0097040A, 0x00000000, 0x001000B1, 0x00000013, 0x00000000, 0x00000043, 0x00000005, EndSpeech, 0xFFFFFFFF, 0x00970404, 0x00970401, 0x00000000, 0x00000056, 0x00000000, 0x00000043, 0x00000004, SetNpcFlagBits, 0xFFFFFFFF, 0x00000100, 0x00000001, 0x00000043, 0x00000003, SetNpcAnimation, 0xFFFFFFFF, 0x00970403, 0x00000043, 0x00000003, SetNpcSpeed, 0xFFFFFFFF, 0xF24A8E80, 0x00000043, 0x00000005, NpcMoveTo, 0xFFFFFFFF, 0xFFFFFE5E, 0xFFFFFFC4, 0x00000000, 0x00000043, 0x00000005, NpcMoveTo, 0xFFFFFFFF, 0xFFFFFED4, 0x00000050, 0x00000000, 0x00000043, 0x00000005, NpcMoveTo, 0xFFFFFFFF, 0xFFFFFEC0, 0x00000073, 0x00000000, 0x00000043, 0x00000005, SetNpcPos, 0xFFFFFFFF, 0x00000000, 0xFFFFFC18, 0x00000000, 0x00000057, 0x00000000, 0x00000024, 0x00000002, 0xF8406050, 0x00000001, 0x00000024, 0x00000002, 0xFE363C80, 0x00000000, 0x00000027, 0x00000002, 0xFE363C80, 0xF840604E, 0x00000027, 0x00000002, 0xFE363C80, 0xF840604F, 0x00000027, 0x00000002, 0xFE363C80, 0xF8406050, 0x00000027, 0x00000002, 0xFE363C80, 0xF8406051, 0x00000027, 0x00000002, 0xFE363C80, 0xF8406052, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000005, 0x00000043, 0x00000005, SetMusicTrack, 0x00000000, 0x0000004E, 0x00000000, 0x00000008, 0x00000024, 0x00000002, 0xF5DE0180, 0x00000010, 0x00000043, 0x00000002, SetPlayerAnimation, 0x00010032, 0x00000008, 0x00000001, 0x00000078, 0x00000044, 0x00000001, 0x802424A0, 0x00000043, 0x00000002, SetPlayerAnimation, 0x00010002, 0x00000012, 0x00000000, 0x00000008, 0x00000001, 0x00000028, 0x00000013, 0x00000000, 0x00000043, 0x00000003, ResetCam, 0x00000000, 0xF24A8A80, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000000, 0x00000043, 0x00000002, RemoveNpc, 0xFFFFFFFF, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x0000000A, 0x00000002, 0xF5DE0180, 0x0000000F, 0x0000000A, 0x00000002, 0xF8406050, 0x00000000, 0x00000043, 0x00000004, SetNpcFlagBits, 0xFFFFFFFF, 0x00000102, 0x00000001, 0x00000043, 0x00000003, EnableNpcShadow, 0xFFFFFFFF, 0x00000000, 0x00000043, 0x00000003, SetNpcAnimation, 0xFFFFFFFF, 0x00970406, 0x00000043, 0x00000003, SetNpcYaw, 0xFFFFFFFF, 0x0000005A, 0x00000043, 0x00000005, SetNpcPos, 0xFFFFFFFF, 0xFFFFFE79, 0x00000000, 0xFFFFFF5C, 0x00000043, 0x00000003, BindNpcIdle, 0xFFFFFFFF, 0x80245230, 0x00000002, 0x00000000, 0x00000013, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000002, RemoveNpc, 0xFFFFFFFF, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000002, GetBattleOutcome, 0xFE363C80, 0x00000014, 0x00000001, 0xFE363C80, 0x00000016, 0x00000001, 0x00000000, 0x00000043, 0x00000001, DoNpcDefeat, 0x00000016, 0x00000001, 0x00000002, 0x00000043, 0x00000003, SetNpcAnimation, 0xFFFFFFFF, 0x00450005, 0x00000043, 0x00000003, GetSelfVar, 0x0000000A, 0xFE363C80, 0x00000043, 0x00000003, GetSelfVar, 0x0000000B, 0xFE363C81, 0x00000043, 0x00000003, GetSelfVar, 0x0000000C, 0xFE363C82, 0x00000043, 0x00000006, NpcJump1, 0xFFFFFFFF, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000008, 0x00000043, 0x00000003, EnableNpcShadow, 0xFFFFFFFF, 0x00000000, 0x00000043, 0x00000003, SetNpcAnimation, 0xFFFFFFFF, 0x00450000, 0x00000043, 0x00000004, SetNpcFlagBits, 0xFFFFFFFF, 0x00000100, 0x00000000, 0x00000043, 0x00000003, BindNpcAI, 0xFFFFFFFF, 0x802445CC, 0x00000016, 0x00000001, 0x00000003, 0x00000043, 0x00000004, SetEnemyFlagBits, 0xFFFFFFFF, 0x00000010, 0x00000001, 0x00000043, 0x00000002, RemoveNpc, 0xFFFFFFFF, 0x00000023, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000004, SetNpcCollisionSize, 0xFFFFFFFF, 0x0000003C, 0x0000001E, 0x00000043, 0x00000003, BindNpcDefeat, 0xFFFFFFFF, 0x80245770, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x802450B8, 0x437F0000, 0x41700000, 0xC2820000, 0x00000400, 0x00000000, 0x00000000, 0x00000000, 0x0000005A, 0x8005008F, 0x000A0000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00001999, 0x59980003, 0x3FFF2666, 0x4CCC0003, 0x3FFF3FFF, 0x3FFF0003, 0x33326665, 0x33320003, 0x33327FFF, 0x26660003, 0x26660000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00001999, 0x3FFF0002, 0x33322666, 0x33320002, 0x33323FFF, 0x33320002, 0x33326665, 0x33320002, 0x33327FFF, 0x26660002, 0x33320000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00030000, 0x000000FF, 0x00000000, 0xFFFFFFBF, 0x0000001E, 0x00000000, 0xFFFF8001, 0x00000000, 0x000000FF, 0x00000000, 0xFFFFFFBF, 0x00000096, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00420003, 0x00420005, 0x00420006, 0x00420006, 0x00420003, 0x00420003, 0x00420007, 0x00420007, 0x0042001A, 0x0042001B, 0x00420003, 0x00420003, 0x00420003, 0x00420003, 0x00420003, 0x00420003, 0x00000003, 0x00000000, 0x80244F2C, 0x00000000, 0x00000001, 0x8024518C, 0x00000000, 0xC47A0000, 0x00000000, 0x00800D00, 0x00000000, 0x00000000, 0x00000000, 0x00000000, D_80000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00420003, 0x00420005, 0x00420006, 0x00420006, 0x00420003, 0x00420003, 0x00420007, 0x00420007, 0x0042001A, 0x0042001B, 0x00420003, 0x00420003, 0x00420003, 0x00420003, 0x00420003, 0x00420003, 0x00000000, 0x00000000, 0x80244F54, 0x00000000, 0x00000002, 0x80244EEC, 0x43C80000, 0x00000000, 0x436B0000, 0x00408D01, 0x00000000, 0x00000000, 0x00000000, 0x0000010E, 0x800A0089, 0x00050000, 0x009B0005, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00001999, 0x59980003, 0x3FFF2666, 0x4CCC0003, 0x3FFF3FFF, 0x3FFF0003, 0x33326665, 0x33320003, 0x33327FFF, 0x26660003, 0x26660000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00001999, 0x3FFF0002, 0x33322666, 0x33320002, 0x33323FFF, 0x33320002, 0x33326665, 0x33320002, 0x33327FFF, 0x26660002, 0x33320000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00020000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00440001, 0x00440001, 0x00440001, 0x00440001, 0x00440001, 0x00440001, 0x0044000E, 0x0044000E, 0x00440001, 0x00440001, 0x00440001, 0x00440001, 0x00440001, 0x00440001, 0x00440001, 0x00440001, 0x00000000, 0x00000000, 0x80244F18, 0x001A00D3, 0x00000003, 0x80244ACC, 0xC3CB8000, 0x00000000, 0xC2280000, 0x00408D01, 0x802458C0, 0x00000000, 0x00000000, 0x0000005A, 0x800A0089, 0x00050000, 0x009B0005, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00001999, 0x59980003, 0x3FFF2666, 0x4CCC0003, 0x3FFF3FFF, 0x3FFF0003, 0x33326665, 0x33320003, 0x33327FFF, 0x26660003, 0x26660000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00001999, 0x3FFF0002, 0x33322666, 0x33320002, 0x33323FFF, 0x33320002, 0x33326665, 0x33320002, 0x33327FFF, 0x26660002, 0x33320000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00020000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00450002, 0x00450002, 0x00450002, 0x00450002, 0x00450002, 0x00450002, 0x00450007, 0x00450007, 0x00450002, 0x00450002, 0x00450002, 0x00450002, 0x00450002, 0x00450002, 0x00450002, 0x00450002, 0x00000000, 0x00000000, 0x00000000, 0x001A00D4, 0x00000004, 0x80244ACC, 0xC2F00000, 0x00000000, 0xC3C58000, 0x00408D01, 0x00000000, 0x00000000, 0x00000000, 0x0000005A, 0x800A0089, 0x00050000, 0x009B0005, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00001999, 0x59980003, 0x3FFF2666, 0x4CCC0003, 0x3FFF3FFF, 0x3FFF0003, 0x33326665, 0x33320003, 0x33327FFF, 0x26660003, 0x26660000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00001999, 0x3FFF0002, 0x33322666, 0x33320002, 0x33323FFF, 0x33320002, 0x33326665, 0x33320002, 0x33327FFF, 0x26660002, 0x33320000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00020000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00450002, 0x00450002, 0x00450002, 0x00450002, 0x00450002, 0x00450002, 0x00450007, 0x00450007, 0x00450002, 0x00450002, 0x00450002, 0x00450002, 0x00450002, 0x00450002, 0x00450002, 0x00450002, 0x00000000, 0x00000000, 0x00000000, 0x001A00D4, 0x00000005, 0x80244C80, 0xC35B0000, 0x00000000, 0x43D20000, 0x00408D05, 0x00000000, 0x00000000, 0x00000000, 0x0000010E, D_80000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00430000, 0x00430000, 0x00430000, 0x00430000, 0x00430000, 0x00430000, 0x00430000, 0x00430000, 0x00430000, 0x00430000, 0x00430000, 0x00430000, 0x00430000, 0x00430000, 0x00430000, 0x00430000, 0x00000000, 0x00000000, 0x00000000, 0x001A00D3, 0x00000006, 0x80244C80, 0xC31D0000, 0x00000000, 0x43E20000, 0x00408D05, 0x00000000, 0x00000000, 0x00000000, 0x0000010E, D_80000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00430000, 0x00430000, 0x00430000, 0x00430000, 0x00430000, 0x00430000, 0x00430000, 0x00430000, 0x00430000, 0x00430000, 0x00430000, 0x00430000, 0x00430000, 0x00430000, 0x00430000, 0x00430000, 0x00000000, 0x00000000, 0x00000000, 0x001A00D3, 0x00000007, D_802445A0_B62850, 0xC3E10000, 0x00000000, 0xC3910000, 0x00400D0D, 0x80245694, 0x00000000, 0x00000000, 0x0000005A, D_80000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00970401, 0x00970402, 0x00970403, 0x00970403, 0x00970401, 0x00970401, 0x00970401, 0x00970401, 0x00970401, 0x00970401, 0x00970401, 0x00970401, 0x00970401, 0x00970401, 0x00970401, 0x00970401, 0x00000000, 0x00000000, 0x00000000, 0x001A00C7, 0x00000002, 0x802458FC, 0x14010002, 0x00000001, 0x80245CDC, 0x14080002, 0x00000001, 0x80245ECC, 0x14100002, 0x00000001, 0x802460BC, 0x140E0002, 0x00000001, 0x802462AC, 0x00000000, 0x00000001, 0x8024649C, 0x00000000, 0x00000001, 0x8024668C, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000