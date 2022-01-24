.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .rodata

dlabel jtbl_80243D50_A72130
.word .L80240DA8_A6F188, .L80240DD8_A6F1B8, .L80241004_A6F3E4, .L80241048_A6F428, .L802410A0_A6F480, 0

dlabel D_80243D68_A72148
.double 90.0

.section .text

glabel func_80240CB4_A6F094
/* A6F094 80240CB4 27BDFC78 */  addiu     $sp, $sp, -0x388
/* A6F098 80240CB8 AFB60378 */  sw        $s6, 0x378($sp)
/* A6F09C 80240CBC 0080B02D */  daddu     $s6, $a0, $zero
/* A6F0A0 80240CC0 AFBF037C */  sw        $ra, 0x37c($sp)
/* A6F0A4 80240CC4 AFB50374 */  sw        $s5, 0x374($sp)
/* A6F0A8 80240CC8 AFB40370 */  sw        $s4, 0x370($sp)
/* A6F0AC 80240CCC AFB3036C */  sw        $s3, 0x36c($sp)
/* A6F0B0 80240CD0 AFB20368 */  sw        $s2, 0x368($sp)
/* A6F0B4 80240CD4 AFB10364 */  sw        $s1, 0x364($sp)
/* A6F0B8 80240CD8 AFB00360 */  sw        $s0, 0x360($sp)
/* A6F0BC 80240CDC F7B40380 */  sdc1      $f20, 0x380($sp)
/* A6F0C0 80240CE0 8ED20148 */  lw        $s2, 0x148($s6)
/* A6F0C4 80240CE4 86440008 */  lh        $a0, 8($s2)
/* A6F0C8 80240CE8 0C00EABB */  jal       get_npc_unsafe
/* A6F0CC 80240CEC 00A0802D */   daddu    $s0, $a1, $zero
/* A6F0D0 80240CF0 86440008 */  lh        $a0, 8($s2)
/* A6F0D4 80240CF4 0040882D */  daddu     $s1, $v0, $zero
/* A6F0D8 80240CF8 0C00FB3A */  jal       get_enemy
/* A6F0DC 80240CFC 2484FFFF */   addiu    $a0, $a0, -1
/* A6F0E0 80240D00 84440008 */  lh        $a0, 8($v0)
/* A6F0E4 80240D04 0C00EABB */  jal       get_npc_unsafe
/* A6F0E8 80240D08 0000A82D */   daddu    $s5, $zero, $zero
/* A6F0EC 80240D0C 27B30020 */  addiu     $s3, $sp, 0x20
/* A6F0F0 80240D10 16000005 */  bnez      $s0, .L80240D28
/* A6F0F4 80240D14 0040A02D */   daddu    $s4, $v0, $zero
/* A6F0F8 80240D18 8E4200B0 */  lw        $v0, 0xb0($s2)
/* A6F0FC 80240D1C 30420004 */  andi      $v0, $v0, 4
/* A6F100 80240D20 10400018 */  beqz      $v0, .L80240D84
/* A6F104 80240D24 00000000 */   nop
.L80240D28:
/* A6F108 80240D28 3C030024 */  lui       $v1, 0x24
/* A6F10C 80240D2C 34630102 */  ori       $v1, $v1, 0x102
/* A6F110 80240D30 3C041620 */  lui       $a0, 0x1620
/* A6F114 80240D34 AEC00070 */  sw        $zero, 0x70($s6)
/* A6F118 80240D38 8E220000 */  lw        $v0, ($s1)
/* A6F11C 80240D3C 34840040 */  ori       $a0, $a0, 0x40
/* A6F120 80240D40 A620008E */  sh        $zero, 0x8e($s1)
/* A6F124 80240D44 00431025 */  or        $v0, $v0, $v1
/* A6F128 80240D48 AE220000 */  sw        $v0, ($s1)
/* A6F12C 80240D4C 8E420000 */  lw        $v0, ($s2)
/* A6F130 80240D50 3C013ECC */  lui       $at, 0x3ecc
/* A6F134 80240D54 3421CCCD */  ori       $at, $at, 0xcccd
/* A6F138 80240D58 44810000 */  mtc1      $at, $f0
/* A6F13C 80240D5C 00441025 */  or        $v0, $v0, $a0
/* A6F140 80240D60 AE420000 */  sw        $v0, ($s2)
/* A6F144 80240D64 E6200054 */  swc1      $f0, 0x54($s1)
/* A6F148 80240D68 E6200058 */  swc1      $f0, 0x58($s1)
/* A6F14C 80240D6C 8E4300B0 */  lw        $v1, 0xb0($s2)
/* A6F150 80240D70 30620004 */  andi      $v0, $v1, 4
/* A6F154 80240D74 10400003 */  beqz      $v0, .L80240D84
/* A6F158 80240D78 2402FFFB */   addiu    $v0, $zero, -5
/* A6F15C 80240D7C 00621024 */  and       $v0, $v1, $v0
/* A6F160 80240D80 AE4200B0 */  sw        $v0, 0xb0($s2)
.L80240D84:
/* A6F164 80240D84 8EC30070 */  lw        $v1, 0x70($s6)
/* A6F168 80240D88 2C620005 */  sltiu     $v0, $v1, 5
/* A6F16C 80240D8C 10400101 */  beqz      $v0, .L80241194
/* A6F170 80240D90 00031080 */   sll      $v0, $v1, 2
/* A6F174 80240D94 3C018024 */  lui       $at, %hi(jtbl_80243D50_A72130)
/* A6F178 80240D98 00220821 */  addu      $at, $at, $v0
/* A6F17C 80240D9C 8C223D50 */  lw        $v0, %lo(jtbl_80243D50_A72130)($at)
/* A6F180 80240DA0 00400008 */  jr        $v0
/* A6F184 80240DA4 00000000 */   nop
.L80240DA8_A6F188:
/* A6F188 80240DA8 3C01C47A */  lui       $at, 0xc47a
/* A6F18C 80240DAC 44810000 */  mtc1      $at, $f0
/* A6F190 80240DB0 24020014 */  addiu     $v0, $zero, 0x14
/* A6F194 80240DB4 AE400078 */  sw        $zero, 0x78($s2)
/* A6F198 80240DB8 A62200A6 */  sh        $v0, 0xa6($s1)
/* A6F19C 80240DBC A62200A8 */  sh        $v0, 0xa8($s1)
/* A6F1A0 80240DC0 24020001 */  addiu     $v0, $zero, 1
/* A6F1A4 80240DC4 AE200038 */  sw        $zero, 0x38($s1)
/* A6F1A8 80240DC8 AE200040 */  sw        $zero, 0x40($s1)
/* A6F1AC 80240DCC E620003C */  swc1      $f0, 0x3c($s1)
/* A6F1B0 80240DD0 AE40006C */  sw        $zero, 0x6c($s2)
/* A6F1B4 80240DD4 AEC20070 */  sw        $v0, 0x70($s6)
.L80240DD8_A6F1B8:
/* A6F1B8 80240DD8 8E50006C */  lw        $s0, 0x6c($s2)
/* A6F1BC 80240DDC 24020001 */  addiu     $v0, $zero, 1
/* A6F1C0 80240DE0 160200EC */  bne       $s0, $v0, .L80241194
/* A6F1C4 80240DE4 24150002 */   addiu    $s5, $zero, 2
/* A6F1C8 80240DE8 AE55006C */  sw        $s5, 0x6c($s2)
/* A6F1CC 80240DEC C6800038 */  lwc1      $f0, 0x38($s4)
/* A6F1D0 80240DF0 E6600038 */  swc1      $f0, 0x38($s3)
/* A6F1D4 80240DF4 C680003C */  lwc1      $f0, 0x3c($s4)
/* A6F1D8 80240DF8 E660003C */  swc1      $f0, 0x3c($s3)
/* A6F1DC 80240DFC C6800040 */  lwc1      $f0, 0x40($s4)
/* A6F1E0 80240E00 E6600040 */  swc1      $f0, 0x40($s3)
/* A6F1E4 80240E04 C6820034 */  lwc1      $f2, 0x34($s4)
/* A6F1E8 80240E08 3C014387 */  lui       $at, 0x4387
/* A6F1EC 80240E0C 44810000 */  mtc1      $at, $f0
/* A6F1F0 80240E10 00000000 */  nop
/* A6F1F4 80240E14 46020001 */  sub.s     $f0, $f0, $f2
/* A6F1F8 80240E18 C6480074 */  lwc1      $f8, 0x74($s2)
/* A6F1FC 80240E1C 46804220 */  cvt.s.w   $f8, $f8
/* A6F200 80240E20 44054000 */  mfc1      $a1, $f8
/* A6F204 80240E24 44060000 */  mfc1      $a2, $f0
/* A6F208 80240E28 0C00EA95 */  jal       npc_move_heading
/* A6F20C 80240E2C 0260202D */   daddu    $a0, $s3, $zero
/* A6F210 80240E30 C6600038 */  lwc1      $f0, 0x38($s3)
/* A6F214 80240E34 E6200038 */  swc1      $f0, 0x38($s1)
/* A6F218 80240E38 C680003C */  lwc1      $f0, 0x3c($s4)
/* A6F21C 80240E3C C6420070 */  lwc1      $f2, 0x70($s2)
/* A6F220 80240E40 468010A0 */  cvt.s.w   $f2, $f2
/* A6F224 80240E44 46020000 */  add.s     $f0, $f0, $f2
/* A6F228 80240E48 3C014024 */  lui       $at, 0x4024
/* A6F22C 80240E4C 4481A800 */  mtc1      $at, $f21
/* A6F230 80240E50 4480A000 */  mtc1      $zero, $f20
/* A6F234 80240E54 E620003C */  swc1      $f0, 0x3c($s1)
/* A6F238 80240E58 C6600040 */  lwc1      $f0, 0x40($s3)
/* A6F23C 80240E5C E6200040 */  swc1      $f0, 0x40($s1)
/* A6F240 80240E60 A2500007 */  sb        $s0, 7($s2)
/* A6F244 80240E64 C6200038 */  lwc1      $f0, 0x38($s1)
/* A6F248 80240E68 3C014066 */  lui       $at, 0x4066
/* A6F24C 80240E6C 34216666 */  ori       $at, $at, 0x6666
/* A6F250 80240E70 44811000 */  mtc1      $at, $f2
/* A6F254 80240E74 4600020D */  trunc.w.s $f8, $f0
/* A6F258 80240E78 44024000 */  mfc1      $v0, $f8
/* A6F25C 80240E7C 00000000 */  nop
/* A6F260 80240E80 A6420010 */  sh        $v0, 0x10($s2)
/* A6F264 80240E84 C620003C */  lwc1      $f0, 0x3c($s1)
/* A6F268 80240E88 3C13800F */  lui       $s3, %hi(gPlayerStatusPtr)
/* A6F26C 80240E8C 26737B30 */  addiu     $s3, $s3, %lo(gPlayerStatusPtr)
/* A6F270 80240E90 4600020D */  trunc.w.s $f8, $f0
/* A6F274 80240E94 44024000 */  mfc1      $v0, $f8
/* A6F278 80240E98 00000000 */  nop
/* A6F27C 80240E9C A6420012 */  sh        $v0, 0x12($s2)
/* A6F280 80240EA0 C6200040 */  lwc1      $f0, 0x40($s1)
/* A6F284 80240EA4 8E630000 */  lw        $v1, ($s3)
/* A6F288 80240EA8 4600020D */  trunc.w.s $f8, $f0
/* A6F28C 80240EAC 44024000 */  mfc1      $v0, $f8
/* A6F290 80240EB0 00000000 */  nop
/* A6F294 80240EB4 A6420014 */  sh        $v0, 0x14($s2)
/* A6F298 80240EB8 E6220018 */  swc1      $f2, 0x18($s1)
/* A6F29C 80240EBC C460002C */  lwc1      $f0, 0x2c($v1)
/* A6F2A0 80240EC0 C6220038 */  lwc1      $f2, 0x38($s1)
/* A6F2A4 80240EC4 46000021 */  cvt.d.s   $f0, $f0
/* A6F2A8 80240EC8 46340000 */  add.d     $f0, $f0, $f20
/* A6F2AC 80240ECC C4640028 */  lwc1      $f4, 0x28($v1)
/* A6F2B0 80240ED0 44806000 */  mtc1      $zero, $f12
/* A6F2B4 80240ED4 46041081 */  sub.s     $f2, $f2, $f4
/* A6F2B8 80240ED8 C62E003C */  lwc1      $f14, 0x3c($s1)
/* A6F2BC 80240EDC 46200020 */  cvt.s.d   $f0, $f0
/* A6F2C0 80240EE0 46001085 */  abs.s     $f2, $f2
/* A6F2C4 80240EE4 44070000 */  mfc1      $a3, $f0
/* A6F2C8 80240EE8 44061000 */  mfc1      $a2, $f2
/* A6F2CC 80240EEC 0C00A720 */  jal       atan2
/* A6F2D0 80240EF0 00000000 */   nop
/* A6F2D4 80240EF4 3C018024 */  lui       $at, %hi(D_80243D68_A72148)
/* A6F2D8 80240EF8 D4223D68 */  ldc1      $f2, %lo(D_80243D68_A72148)($at)
/* A6F2DC 80240EFC 46000021 */  cvt.d.s   $f0, $f0
/* A6F2E0 80240F00 46220001 */  sub.d     $f0, $f0, $f2
/* A6F2E4 80240F04 46200020 */  cvt.s.d   $f0, $f0
/* A6F2E8 80240F08 4600020D */  trunc.w.s $f8, $f0
/* A6F2EC 80240F0C 44044000 */  mfc1      $a0, $f8
/* A6F2F0 80240F10 00000000 */  nop
/* A6F2F4 80240F14 00042400 */  sll       $a0, $a0, 0x10
/* A6F2F8 80240F18 0C00A4F5 */  jal       cosine
/* A6F2FC 80240F1C 00042403 */   sra      $a0, $a0, 0x10
/* A6F300 80240F20 C6220018 */  lwc1      $f2, 0x18($s1)
/* A6F304 80240F24 46020002 */  mul.s     $f0, $f0, $f2
/* A6F308 80240F28 00000000 */  nop
/* A6F30C 80240F2C C62C0038 */  lwc1      $f12, 0x38($s1)
/* A6F310 80240F30 C62E0040 */  lwc1      $f14, 0x40($s1)
/* A6F314 80240F34 8E620000 */  lw        $v0, ($s3)
/* A6F318 80240F38 E620001C */  swc1      $f0, 0x1c($s1)
/* A6F31C 80240F3C 8C460028 */  lw        $a2, 0x28($v0)
/* A6F320 80240F40 0C00A720 */  jal       atan2
/* A6F324 80240F44 8C470030 */   lw       $a3, 0x30($v0)
/* A6F328 80240F48 8E620000 */  lw        $v0, ($s3)
/* A6F32C 80240F4C E620000C */  swc1      $f0, 0xc($s1)
/* A6F330 80240F50 C440002C */  lwc1      $f0, 0x2c($v0)
/* A6F334 80240F54 46000021 */  cvt.d.s   $f0, $f0
/* A6F338 80240F58 46340000 */  add.d     $f0, $f0, $f20
/* A6F33C 80240F5C 46200020 */  cvt.s.d   $f0, $f0
/* A6F340 80240F60 E7A00010 */  swc1      $f0, 0x10($sp)
/* A6F344 80240F64 C4400030 */  lwc1      $f0, 0x30($v0)
/* A6F348 80240F68 E7A00014 */  swc1      $f0, 0x14($sp)
/* A6F34C 80240F6C C62C0038 */  lwc1      $f12, 0x38($s1)
/* A6F350 80240F70 C62E003C */  lwc1      $f14, 0x3c($s1)
/* A6F354 80240F74 8E260040 */  lw        $a2, 0x40($s1)
/* A6F358 80240F78 0C00A7CB */  jal       dist3D
/* A6F35C 80240F7C 8C470028 */   lw       $a3, 0x28($v0)
/* A6F360 80240F80 C6220018 */  lwc1      $f2, 0x18($s1)
/* A6F364 80240F84 46020003 */  div.s     $f0, $f0, $f2
/* A6F368 80240F88 4600020D */  trunc.w.s $f8, $f0
/* A6F36C 80240F8C 44104000 */  mfc1      $s0, $f8
/* A6F370 80240F90 00000000 */  nop
/* A6F374 80240F94 5A000001 */  blezl     $s0, .L80240F9C
/* A6F378 80240F98 24100001 */   addiu    $s0, $zero, 1
.L80240F9C:
/* A6F37C 80240F9C 8E620000 */  lw        $v0, ($s3)
/* A6F380 80240FA0 C624003C */  lwc1      $f4, 0x3c($s1)
/* A6F384 80240FA4 3C014120 */  lui       $at, 0x4120
/* A6F388 80240FA8 44811000 */  mtc1      $at, $f2
/* A6F38C 80240FAC C4400028 */  lwc1      $f0, 0x28($v0)
/* A6F390 80240FB0 E7A00010 */  swc1      $f0, 0x10($sp)
/* A6F394 80240FB4 C440002C */  lwc1      $f0, 0x2c($v0)
/* A6F398 80240FB8 46020000 */  add.s     $f0, $f0, $f2
/* A6F39C 80240FBC 3C014160 */  lui       $at, 0x4160
/* A6F3A0 80240FC0 44811000 */  mtc1      $at, $f2
/* A6F3A4 80240FC4 00000000 */  nop
/* A6F3A8 80240FC8 46022100 */  add.s     $f4, $f4, $f2
/* A6F3AC 80240FCC 46020000 */  add.s     $f0, $f0, $f2
/* A6F3B0 80240FD0 44062000 */  mfc1      $a2, $f4
/* A6F3B4 80240FD4 E7A00014 */  swc1      $f0, 0x14($sp)
/* A6F3B8 80240FD8 C4400030 */  lwc1      $f0, 0x30($v0)
/* A6F3BC 80240FDC AFB0001C */  sw        $s0, 0x1c($sp)
/* A6F3C0 80240FE0 E7A00018 */  swc1      $f0, 0x18($sp)
/* A6F3C4 80240FE4 8E250038 */  lw        $a1, 0x38($s1)
/* A6F3C8 80240FE8 8E270040 */  lw        $a3, 0x40($s1)
/* A6F3CC 80240FEC 0C01BFD4 */  jal       fx_shape_spell
/* A6F3D0 80240FF0 0000202D */   daddu    $a0, $zero, $zero
/* A6F3D4 80240FF4 AE420078 */  sw        $v0, 0x78($s2)
/* A6F3D8 80240FF8 A630008E */  sh        $s0, 0x8e($s1)
/* A6F3DC 80240FFC 08090465 */  j         .L80241194
/* A6F3E0 80241000 AED50070 */   sw       $s5, 0x70($s6)
.L80241004_A6F3E4:
/* A6F3E4 80241004 9622008E */  lhu       $v0, 0x8e($s1)
/* A6F3E8 80241008 2442FFFF */  addiu     $v0, $v0, -1
/* A6F3EC 8024100C A622008E */  sh        $v0, 0x8e($s1)
/* A6F3F0 80241010 00021400 */  sll       $v0, $v0, 0x10
/* A6F3F4 80241014 58400001 */  blezl     $v0, .L8024101C
/* A6F3F8 80241018 24150014 */   addiu    $s5, $zero, 0x14
.L8024101C:
/* A6F3FC 8024101C 16A0000A */  bnez      $s5, .L80241048_A6F428
/* A6F400 80241020 00000000 */   nop
/* A6F404 80241024 8E250018 */  lw        $a1, 0x18($s1)
/* A6F408 80241028 8E26000C */  lw        $a2, 0xc($s1)
/* A6F40C 8024102C 0C00EA95 */  jal       npc_move_heading
/* A6F410 80241030 0220202D */   daddu    $a0, $s1, $zero
/* A6F414 80241034 C620003C */  lwc1      $f0, 0x3c($s1)
/* A6F418 80241038 C622001C */  lwc1      $f2, 0x1c($s1)
/* A6F41C 8024103C 46020000 */  add.s     $f0, $f0, $f2
/* A6F420 80241040 08090465 */  j         .L80241194
/* A6F424 80241044 E620003C */   swc1     $f0, 0x3c($s1)
.L80241048_A6F428:
/* A6F428 80241048 862200A8 */  lh        $v0, 0xa8($s1)
/* A6F42C 8024104C 3C013FE0 */  lui       $at, 0x3fe0
/* A6F430 80241050 44810800 */  mtc1      $at, $f1
/* A6F434 80241054 44800000 */  mtc1      $zero, $f0
/* A6F438 80241058 44821000 */  mtc1      $v0, $f2
/* A6F43C 8024105C 00000000 */  nop
/* A6F440 80241060 468010A1 */  cvt.d.w   $f2, $f2
/* A6F444 80241064 46201082 */  mul.d     $f2, $f2, $f0
/* A6F448 80241068 00000000 */  nop
/* A6F44C 8024106C C620003C */  lwc1      $f0, 0x3c($s1)
/* A6F450 80241070 AE20001C */  sw        $zero, 0x1c($s1)
/* A6F454 80241074 46000021 */  cvt.d.s   $f0, $f0
/* A6F458 80241078 46220001 */  sub.d     $f0, $f0, $f2
/* A6F45C 8024107C AE200018 */  sw        $zero, 0x18($s1)
/* A6F460 80241080 24020003 */  addiu     $v0, $zero, 3
/* A6F464 80241084 46200020 */  cvt.s.d   $f0, $f0
/* A6F468 80241088 E620003C */  swc1      $f0, 0x3c($s1)
/* A6F46C 8024108C AE42006C */  sw        $v0, 0x6c($s2)
/* A6F470 80241090 24020004 */  addiu     $v0, $zero, 4
/* A6F474 80241094 A620008E */  sh        $zero, 0x8e($s1)
/* A6F478 80241098 08090465 */  j         .L80241194
/* A6F47C 8024109C AEC20070 */   sw       $v0, 0x70($s6)
.L802410A0_A6F480:
/* A6F480 802410A0 9622008E */  lhu       $v0, 0x8e($s1)
/* A6F484 802410A4 24420001 */  addiu     $v0, $v0, 1
/* A6F488 802410A8 A622008E */  sh        $v0, 0x8e($s1)
/* A6F48C 802410AC 00021400 */  sll       $v0, $v0, 0x10
/* A6F490 802410B0 00021C03 */  sra       $v1, $v0, 0x10
/* A6F494 802410B4 28620007 */  slti      $v0, $v1, 7
/* A6F498 802410B8 10400027 */  beqz      $v0, .L80241158
/* A6F49C 802410BC 24020007 */   addiu    $v0, $zero, 7
/* A6F4A0 802410C0 8622008E */  lh        $v0, 0x8e($s1)
/* A6F4A4 802410C4 3C01401C */  lui       $at, 0x401c
/* A6F4A8 802410C8 44810800 */  mtc1      $at, $f1
/* A6F4AC 802410CC 44800000 */  mtc1      $zero, $f0
/* A6F4B0 802410D0 44822000 */  mtc1      $v0, $f4
/* A6F4B4 802410D4 00000000 */  nop
/* A6F4B8 802410D8 46802120 */  cvt.s.w   $f4, $f4
/* A6F4BC 802410DC 46002121 */  cvt.d.s   $f4, $f4
/* A6F4C0 802410E0 46202102 */  mul.d     $f4, $f4, $f0
/* A6F4C4 802410E4 00000000 */  nop
/* A6F4C8 802410E8 44821000 */  mtc1      $v0, $f2
/* A6F4CC 802410EC 00000000 */  nop
/* A6F4D0 802410F0 468010A0 */  cvt.s.w   $f2, $f2
/* A6F4D4 802410F4 460010A1 */  cvt.d.s   $f2, $f2
/* A6F4D8 802410F8 46201082 */  mul.d     $f2, $f2, $f0
/* A6F4DC 802410FC 00000000 */  nop
/* A6F4E0 80241100 C620003C */  lwc1      $f0, 0x3c($s1)
/* A6F4E4 80241104 3C01400C */  lui       $at, 0x400c
/* A6F4E8 80241108 44813800 */  mtc1      $at, $f7
/* A6F4EC 8024110C 44803000 */  mtc1      $zero, $f6
/* A6F4F0 80241110 46000021 */  cvt.d.s   $f0, $f0
/* A6F4F4 80241114 46260001 */  sub.d     $f0, $f0, $f6
/* A6F4F8 80241118 3C014034 */  lui       $at, 0x4034
/* A6F4FC 8024111C 44813800 */  mtc1      $at, $f7
/* A6F500 80241120 44803000 */  mtc1      $zero, $f6
/* A6F504 80241124 00000000 */  nop
/* A6F508 80241128 46262100 */  add.d     $f4, $f4, $f6
/* A6F50C 8024112C 46200020 */  cvt.s.d   $f0, $f0
/* A6F510 80241130 E620003C */  swc1      $f0, 0x3c($s1)
/* A6F514 80241134 46261080 */  add.d     $f2, $f2, $f6
/* A6F518 80241138 4620220D */  trunc.w.d $f8, $f4
/* A6F51C 8024113C 44024000 */  mfc1      $v0, $f8
/* A6F520 80241140 00000000 */  nop
/* A6F524 80241144 A62200A6 */  sh        $v0, 0xa6($s1)
/* A6F528 80241148 4620120D */  trunc.w.d $f8, $f2
/* A6F52C 8024114C 44024000 */  mfc1      $v0, $f8
/* A6F530 80241150 08090465 */  j         .L80241194
/* A6F534 80241154 A62200A8 */   sh       $v0, 0xa8($s1)
.L80241158:
/* A6F538 80241158 1462000A */  bne       $v1, $v0, .L80241184
/* A6F53C 8024115C 28620010 */   slti     $v0, $v1, 0x10
/* A6F540 80241160 3C01C47A */  lui       $at, 0xc47a
/* A6F544 80241164 44810000 */  mtc1      $at, $f0
/* A6F548 80241168 24020014 */  addiu     $v0, $zero, 0x14
/* A6F54C 8024116C AE200038 */  sw        $zero, 0x38($s1)
/* A6F550 80241170 AE200040 */  sw        $zero, 0x40($s1)
/* A6F554 80241174 A62200A6 */  sh        $v0, 0xa6($s1)
/* A6F558 80241178 A62200A8 */  sh        $v0, 0xa8($s1)
/* A6F55C 8024117C 08090465 */  j         .L80241194
/* A6F560 80241180 E620003C */   swc1     $f0, 0x3c($s1)
.L80241184:
/* A6F564 80241184 14400003 */  bnez      $v0, .L80241194
/* A6F568 80241188 00000000 */   nop
/* A6F56C 8024118C AE40006C */  sw        $zero, 0x6c($s2)
/* A6F570 80241190 AEC00070 */  sw        $zero, 0x70($s6)
.L80241194:
/* A6F574 80241194 8FBF037C */  lw        $ra, 0x37c($sp)
/* A6F578 80241198 8FB60378 */  lw        $s6, 0x378($sp)
/* A6F57C 8024119C 8FB50374 */  lw        $s5, 0x374($sp)
/* A6F580 802411A0 8FB40370 */  lw        $s4, 0x370($sp)
/* A6F584 802411A4 8FB3036C */  lw        $s3, 0x36c($sp)
/* A6F588 802411A8 8FB20368 */  lw        $s2, 0x368($sp)
/* A6F58C 802411AC 8FB10364 */  lw        $s1, 0x364($sp)
/* A6F590 802411B0 8FB00360 */  lw        $s0, 0x360($sp)
/* A6F594 802411B4 D7B40380 */  ldc1      $f20, 0x380($sp)
/* A6F598 802411B8 0000102D */  daddu     $v0, $zero, $zero
/* A6F59C 802411BC 03E00008 */  jr        $ra
/* A6F5A0 802411C0 27BD0388 */   addiu    $sp, $sp, 0x388
