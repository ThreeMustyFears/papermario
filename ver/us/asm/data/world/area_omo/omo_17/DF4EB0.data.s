.include "macro.inc"

.section .data

glabel D_80246010_DF4EB0
.word 0x40000000, 0x0000003C, 0x0000000F, 0x42C80000, 0x41F00000, 0x00000004, 0x40800000, 0x00000006, 0x00000001, 0x430C0000, 0x41F00000, 0x00000001

glabel D_80246040_DF4EE0
.word 0x00000043, 0x00000002, func_80240798_DEF638, D_80246010_DF4EB0, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00170016, 0x00000000, 0x00000000, D_80246040_DF4EE0, EnemyNpcHit, 0x00000000, EnemyNpcDefeat, 0x00000000, 0x00000000, 0x000E0001

glabel D_8024608C_DF4F2C
.word 0x40400000, 0x0000001E, 0x0000003C, 0x42C80000, 0x41F00000, 0x00000004, 0x40A00000, 0x00000008, 0x00000001, 0x430C0000, 0x41F00000, 0x00000001

glabel D_802460BC_DF4F5C
.word 0x00000043, 0x00000002, DoBasicAI, D_8024608C_DF4F2C, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00170016, 0x00000000, 0x00000000, D_802460BC_DF4F5C, EnemyNpcHit, 0x00000000, EnemyNpcDefeat, 0x00000000, 0x00000000, 0x000F0000

glabel D_80246108_DF4FA8
.word 0x3FD9999A, 0x00000050, 0x00000001, 0x42C80000, 0x00000000, 0x00000004, 0x40900000, 0x00000014, 0x00000001, 0x430C0000, 0x00000000, 0x00000001

glabel D_80246138_DF4FD8
.word 0x00000043, 0x00000002, func_80240CE0_DEFB80, D_80246108_DF4FA8, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00180016, 0x00000000, 0x00000000, D_80246138_DF4FD8, EnemyNpcHit, 0x00000000, EnemyNpcDefeat, 0x00000000, 0x00000000, 0x000F0001

glabel D_80246184_DF5024
.float 4.5, 3.5, 2.6, 2.0, 1.5, 20.0

glabel D_8024619C_DF503C
.word 0x3FE66666, 0x00000000, 0x00000000, 0x42F00000, 0x41F00000, 0x00000003, 0x40800000, 0x0000003C, 0x00000003, 0x43160000, 0x41F00000, 0x00000001

glabel D_802461CC_DF506C
.word 0x00000043, 0x00000003, SetSelfVar, 0x00000000, 0x00000000, 0x00000043, 0x00000003, SetSelfVar, 0x00000005, 0xFFFFFD76, 0x00000043, 0x00000003, SetSelfVar, 0x00000006, 0x0000001E, 0x00000043, 0x00000003, SetSelfVar, 0x00000001, 0x00000258, 0x00000043, 0x00000002, func_802422C0_DF1160, D_8024619C_DF503C, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00190016, 0x00000000, 0x00000000, D_802461CC_DF506C, EnemyNpcHit, 0x00000000, EnemyNpcDefeat, 0x00000000, 0x00000000, 0x000E0001

glabel D_80246268_DF5108
.word 0x00000043, 0x00000002, GetBattleOutcome, 0xFE363C80, 0x00000014, 0x00000001, 0xFE363C80, 0x00000016, 0x00000001, 0x00000000, 0x00000043, 0x00000003, SetSelfVar, 0x00000000, 0x00000005, 0x00000043, 0x00000002, RemoveNpc, 0xFFFFFFFF, 0x00000016, 0x00000001, 0x00000002, 0x00000043, 0x00000005, SetNpcPos, 0xFFFFFFFF, 0x00000000, 0xFFFFFC18, 0x00000000, 0x00000043, 0x00000002, func_80045900, 0x00000001, 0x00000016, 0x00000001, 0x00000003, 0x00000043, 0x00000004, SetEnemyFlagBits, 0xFFFFFFFF, 0x00000010, 0x00000001, 0x00000043, 0x00000002, RemoveNpc, 0xFFFFFFFF, 0x00000023, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80246338_DF51D8
.word 0x3FC00000, 0x0000003C, 0x0000000F, 0x42B40000, 0x42480000, 0x00000003, 0x40733333, 0x00000008, 0x00000001, 0x430C0000, 0x42700000, 0x00000001

glabel D_80246368_DF5208
.word 0x00000043, 0x00000001, omo_17_SetNpcB5_3, 0x00000043, 0x00000003, SetSelfVar, 0x00000000, 0x00000000, 0x00000043, 0x00000003, SetSelfVar, 0x00000001, 0x0000000C, 0x00000043, 0x00000003, SetSelfVar, 0x00000002, 0x00000005, 0x00000043, 0x00000003, SetSelfVar, 0x00000003, 0x00000002, 0x00000043, 0x00000002, func_802433A0_DF2240, D_80246338_DF51D8, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00180016, 0x00000000, 0x00000000, D_80246368_DF5208, EnemyNpcHit, 0x00000000, EnemyNpcDefeat, 0x00000000, 0x00000000, 0x000F0000

glabel D_80246410_DF52B0
.word 0x41000000, 0x00000000, 0x00000000, 0x40800000, 0x3F000000, 0xFFFFFFFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000

glabel D_80246440_DF52E0
.word 0x00000043, 0x00000003, SetSelfVar, 0x00000000, 0x00000000, 0x00000043, 0x00000003, SetSelfVar, 0x00000001, 0x00000000, 0x00000043, 0x00000003, SetSelfVar, 0x00000002, 0x0000000C, 0x00000043, 0x00000003, SetSelfVar, 0x00000003, 0x0000000D, 0x00000043, 0x00000002, func_80242A08_DF18A8, D_80246410_DF52B0, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802464B0_DF5350
.word 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802464C0_DF5360
.word 0x00000043, 0x00000001, omo_17_GetEncounterEnemyIsOwner, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000000, 0x00000002, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000003, BindNpcAI, 0xFFFFFFFF, D_802464B0_DF5350, 0x00000043, 0x00000002, GetOwnerEncounterTrigger, 0xFE363C80, 0x00000014, 0x00000001, 0xFE363C80, 0x0000001D, 0x00000001, 0x00000004, 0x0000001D, 0x00000001, 0x00000003, 0x00000043, 0x00000003, SetSelfVar, 0x00000000, 0x00000003, 0x00000043, 0x00000001, func_80242F44_DF1DE4, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000000, 0x00000002, 0x00000000, 0x00000013, 0x00000000, 0x00000020, 0x00000000, 0x0000001D, 0x00000001, 0x00000002, 0x0000001D, 0x00000001, 0x00000006, 0x00000043, 0x00000003, SetSelfVar, 0x00000000, 0x00000004, 0x00000043, 0x00000005, GetNpcPos, 0xFFFFFFFF, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x0000000F, PlayEffect, 0x00000007, 0x00000002, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000005, SetNpcPos, 0xFFFFFFFF, 0x00000000, 0xFFFFFC18, 0x00000000, 0x00000043, 0x00000003, SetSelfVar, 0x00000000, 0x00000000, 0x00000020, 0x00000000, 0x0000001C, 0x00000000, 0x00000043, 0x00000001, func_800457F8, 0x00000020, 0x00000000, 0x00000023, 0x00000000, 0x00000043, 0x00000003, BindNpcAI, 0xFFFFFFFF, D_80246440_DF52E0, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00070007, 0x00000000, 0x00000000, D_80246440_DF52E0, D_802464C0_DF5360, 0x00000000, D_80246268_DF5108, 0x00000000, 0x00000000, 0x00000008

glabel D_802466B4_DF5554
.word 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802466C4_DF5564
.word 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802466D4_DF5574
.word 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_802466E4_DF5584
.word 0x008C0201, 0x00180018, D_802466B4_DF5554, D_802466C4_DF5564, D_802466D4_DF5574, 0x00000000, 0x00000000, 0x00000000, 0x00000F00, 0x00000000, 0x00000000, 0x00000000, D_802466E4_DF5584, 0x00000000, 0xC47A0000, 0x00000000, 0x00000001, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
