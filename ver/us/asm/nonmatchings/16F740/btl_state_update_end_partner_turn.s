.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel btl_state_update_end_partner_turn
/* 175AFC 8024721C 3C02800E */  lui       $v0, %hi(gBattleState2)
/* 175B00 80247220 8C42C4DC */  lw        $v0, %lo(gBattleState2)($v0)
/* 175B04 80247224 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 175B08 80247228 AFB00010 */  sw        $s0, 0x10($sp)
/* 175B0C 8024722C 3C10800E */  lui       $s0, %hi(gBattleStatus)
/* 175B10 80247230 2610C070 */  addiu     $s0, $s0, %lo(gBattleStatus)
/* 175B14 80247234 14400017 */  bnez      $v0, .L80247294
/* 175B18 80247238 AFBF0014 */   sw       $ra, 0x14($sp)
/* 175B1C 8024723C 8E020004 */  lw        $v0, 4($s0)
/* 175B20 80247240 34420004 */  ori       $v0, $v0, 4
/* 175B24 80247244 0C098D0D */  jal       btl_check_enemies_defeated
/* 175B28 80247248 AE020004 */   sw       $v0, 4($s0)
/* 175B2C 8024724C 14400011 */  bnez      $v0, .L80247294
/* 175B30 80247250 3C03FFF7 */   lui      $v1, 0xfff7
/* 175B34 80247254 3463FFFF */  ori       $v1, $v1, 0xffff
/* 175B38 80247258 8E020000 */  lw        $v0, ($s0)
/* 175B3C 8024725C 82040094 */  lb        $a0, 0x94($s0)
/* 175B40 80247260 00431024 */  and       $v0, $v0, $v1
/* 175B44 80247264 AE020000 */  sw        $v0, ($s0)
/* 175B48 80247268 8E020004 */  lw        $v0, 4($s0)
/* 175B4C 8024726C 2403FFEF */  addiu     $v1, $zero, -0x11
/* 175B50 80247270 00431024 */  and       $v0, $v0, $v1
/* 175B54 80247274 04810004 */  bgez      $a0, .L80247288
/* 175B58 80247278 AE020004 */   sw       $v0, 4($s0)
/* 175B5C 8024727C A2000094 */  sb        $zero, 0x94($s0)
/* 175B60 80247280 08091CA3 */  j         .L8024728C
/* 175B64 80247284 24040006 */   addiu    $a0, $zero, 6
.L80247288:
/* 175B68 80247288 24040009 */  addiu     $a0, $zero, 9
.L8024728C:
/* 175B6C 8024728C 0C090464 */  jal       btl_set_state
/* 175B70 80247290 00000000 */   nop
.L80247294:
/* 175B74 80247294 8FBF0014 */  lw        $ra, 0x14($sp)
/* 175B78 80247298 8FB00010 */  lw        $s0, 0x10($sp)
/* 175B7C 8024729C 03E00008 */  jr        $ra
/* 175B80 802472A0 27BD0018 */   addiu    $sp, $sp, 0x18
