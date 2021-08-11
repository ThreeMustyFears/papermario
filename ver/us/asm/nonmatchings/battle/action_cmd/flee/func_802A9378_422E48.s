.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802A9378_422E48
/* 422E48 802A9378 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 422E4C 802A937C AFB10014 */  sw        $s1, 0x14($sp)
/* 422E50 802A9380 3C11802A */  lui       $s1, %hi(gActionCommandStatus)
/* 422E54 802A9384 2631FBE0 */  addiu     $s1, $s1, %lo(gActionCommandStatus)
/* 422E58 802A9388 AFBF001C */  sw        $ra, 0x1c($sp)
/* 422E5C 802A938C AFB20018 */  sw        $s2, 0x18($sp)
/* 422E60 802A9390 AFB00010 */  sw        $s0, 0x10($sp)
/* 422E64 802A9394 8623004C */  lh        $v1, 0x4c($s1)
/* 422E68 802A9398 3C12800E */  lui       $s2, %hi(gBattleStatus)
/* 422E6C 802A939C 2652C070 */  addiu     $s2, $s2, %lo(gBattleStatus)
/* 422E70 802A93A0 2C62000D */  sltiu     $v0, $v1, 0xd
/* 422E74 802A93A4 104000AA */  beqz      $v0, .L802A9650
/* 422E78 802A93A8 00031080 */   sll      $v0, $v1, 2
/* 422E7C 802A93AC 3C01802B */  lui       $at, %hi(jtbl_802A98E0_4233B0)
/* 422E80 802A93B0 00220821 */  addu      $at, $at, $v0
/* 422E84 802A93B4 8C2298E0 */  lw        $v0, %lo(jtbl_802A98E0_4233B0)($at)
/* 422E88 802A93B8 00400008 */  jr        $v0
/* 422E8C 802A93BC 00000000 */   nop
glabel L802A93C0_422E90
/* 422E90 802A93C0 8E300004 */  lw        $s0, 4($s1)
/* 422E94 802A93C4 240500FF */  addiu     $a1, $zero, 0xff
/* 422E98 802A93C8 0C0513AC */  jal       set_hud_element_alpha
/* 422E9C 802A93CC 0200202D */   daddu    $a0, $s0, $zero
/* 422EA0 802A93D0 82220061 */  lb        $v0, 0x61($s1)
/* 422EA4 802A93D4 10400003 */  beqz      $v0, .L802A93E4
/* 422EA8 802A93D8 0200202D */   daddu    $a0, $s0, $zero
/* 422EAC 802A93DC 0C05128B */  jal       clear_hud_element_flags
/* 422EB0 802A93E0 24050002 */   addiu    $a1, $zero, 2
.L802A93E4:
/* 422EB4 802A93E4 8E300008 */  lw        $s0, 8($s1)
/* 422EB8 802A93E8 240500FF */  addiu     $a1, $zero, 0xff
/* 422EBC 802A93EC 0C0513AC */  jal       set_hud_element_alpha
/* 422EC0 802A93F0 0200202D */   daddu    $a0, $s0, $zero
/* 422EC4 802A93F4 82220061 */  lb        $v0, 0x61($s1)
/* 422EC8 802A93F8 10400003 */  beqz      $v0, .L802A9408
/* 422ECC 802A93FC 0200202D */   daddu    $a0, $s0, $zero
/* 422ED0 802A9400 0C05128B */  jal       clear_hud_element_flags
/* 422ED4 802A9404 24050002 */   addiu    $a1, $zero, 2
.L802A9408:
/* 422ED8 802A9408 8E30000C */  lw        $s0, 0xc($s1)
/* 422EDC 802A940C 240500FF */  addiu     $a1, $zero, 0xff
/* 422EE0 802A9410 0C0513AC */  jal       set_hud_element_alpha
/* 422EE4 802A9414 0200202D */   daddu    $a0, $s0, $zero
/* 422EE8 802A9418 82220061 */  lb        $v0, 0x61($s1)
/* 422EEC 802A941C 10400003 */  beqz      $v0, .L802A942C
/* 422EF0 802A9420 0200202D */   daddu    $a0, $s0, $zero
/* 422EF4 802A9424 0C05128B */  jal       clear_hud_element_flags
/* 422EF8 802A9428 24050002 */   addiu    $a1, $zero, 2
.L802A942C:
/* 422EFC 802A942C 8E300010 */  lw        $s0, 0x10($s1)
/* 422F00 802A9430 240500FF */  addiu     $a1, $zero, 0xff
/* 422F04 802A9434 0C0513AC */  jal       set_hud_element_alpha
/* 422F08 802A9438 0200202D */   daddu    $a0, $s0, $zero
/* 422F0C 802A943C 82220061 */  lb        $v0, 0x61($s1)
/* 422F10 802A9440 10400003 */  beqz      $v0, .L802A9450
/* 422F14 802A9444 0200202D */   daddu    $a0, $s0, $zero
/* 422F18 802A9448 0C05128B */  jal       clear_hud_element_flags
/* 422F1C 802A944C 24050002 */   addiu    $a1, $zero, 2
.L802A9450:
/* 422F20 802A9450 24020001 */  addiu     $v0, $zero, 1
/* 422F24 802A9454 080AA593 */  j         L802A964C_42311C
/* 422F28 802A9458 A622004C */   sh       $v0, 0x4c($s1)
glabel L802A945C_422F2C
/* 422F2C 802A945C 96220056 */  lhu       $v0, 0x56($s1)
/* 422F30 802A9460 24420014 */  addiu     $v0, $v0, 0x14
/* 422F34 802A9464 A6220056 */  sh        $v0, 0x56($s1)
/* 422F38 802A9468 00021400 */  sll       $v0, $v0, 0x10
/* 422F3C 802A946C 00021403 */  sra       $v0, $v0, 0x10
/* 422F40 802A9470 28420033 */  slti      $v0, $v0, 0x33
/* 422F44 802A9474 14400002 */  bnez      $v0, .L802A9480
/* 422F48 802A9478 24020032 */   addiu    $v0, $zero, 0x32
/* 422F4C 802A947C A6220056 */  sh        $v0, 0x56($s1)
.L802A9480:
/* 422F50 802A9480 8E240004 */  lw        $a0, 4($s1)
/* 422F54 802A9484 86250056 */  lh        $a1, 0x56($s1)
/* 422F58 802A9488 0C051261 */  jal       set_hud_element_render_pos
/* 422F5C 802A948C 86260058 */   lh       $a2, 0x58($s1)
/* 422F60 802A9490 8E240008 */  lw        $a0, 8($s1)
/* 422F64 802A9494 86260058 */  lh        $a2, 0x58($s1)
/* 422F68 802A9498 86250056 */  lh        $a1, 0x56($s1)
/* 422F6C 802A949C 0C051261 */  jal       set_hud_element_render_pos
/* 422F70 802A94A0 24C6001C */   addiu    $a2, $a2, 0x1c
/* 422F74 802A94A4 080AA593 */  j         L802A964C_42311C
/* 422F78 802A94A8 00000000 */   nop
glabel L802A94AC_422F7C
/* 422F7C 802A94AC 8622004E */  lh        $v0, 0x4e($s1)
/* 422F80 802A94B0 9623004E */  lhu       $v1, 0x4e($s1)
/* 422F84 802A94B4 10400003 */  beqz      $v0, .L802A94C4
/* 422F88 802A94B8 2462FFFF */   addiu    $v0, $v1, -1
/* 422F8C 802A94BC 080AA593 */  j         L802A964C_42311C
/* 422F90 802A94C0 A622004E */   sh       $v0, 0x4e($s1)
.L802A94C4:
/* 422F94 802A94C4 8E240004 */  lw        $a0, 4($s1)
/* 422F98 802A94C8 3C058011 */  lui       $a1, %hi(D_80108B80)
/* 422F9C 802A94CC 24A58B80 */  addiu     $a1, $a1, %lo(D_80108B80)
/* 422FA0 802A94D0 0C0511FF */  jal       set_hud_element_script
/* 422FA4 802A94D4 00000000 */   nop
/* 422FA8 802A94D8 96230052 */  lhu       $v1, 0x52($s1)
/* 422FAC 802A94DC 24020001 */  addiu     $v0, $zero, 1
/* 422FB0 802A94E0 3C01802B */  lui       $at, %hi(D_802A9920)
/* 422FB4 802A94E4 AC229920 */  sw        $v0, %lo(D_802A9920)($at)
/* 422FB8 802A94E8 2402000B */  addiu     $v0, $zero, 0xb
/* 422FBC 802A94EC A622004C */  sh        $v0, 0x4c($s1)
/* 422FC0 802A94F0 A6230054 */  sh        $v1, 0x54($s1)
glabel L802A94F4_422FC4
/* 422FC4 802A94F4 82420083 */  lb        $v0, 0x83($s2)
/* 422FC8 802A94F8 10400018 */  beqz      $v0, .L802A955C
/* 422FCC 802A94FC 00000000 */   nop
/* 422FD0 802A9500 8E420214 */  lw        $v0, 0x214($s2)
/* 422FD4 802A9504 30428000 */  andi      $v0, $v0, 0x8000
/* 422FD8 802A9508 10400014 */  beqz      $v0, .L802A955C
/* 422FDC 802A950C 3C0451EB */   lui      $a0, 0x51eb
/* 422FE0 802A9510 86220050 */  lh        $v0, 0x50($s1)
/* 422FE4 802A9514 8E430434 */  lw        $v1, 0x434($s2)
/* 422FE8 802A9518 00021080 */  sll       $v0, $v0, 2
/* 422FEC 802A951C 00431021 */  addu      $v0, $v0, $v1
/* 422FF0 802A9520 8C420000 */  lw        $v0, ($v0)
/* 422FF4 802A9524 3484851F */  ori       $a0, $a0, 0x851f
/* 422FF8 802A9528 00021840 */  sll       $v1, $v0, 1
/* 422FFC 802A952C 00621821 */  addu      $v1, $v1, $v0
/* 423000 802A9530 00031100 */  sll       $v0, $v1, 4
/* 423004 802A9534 00431023 */  subu      $v0, $v0, $v1
/* 423008 802A9538 00021080 */  sll       $v0, $v0, 2
/* 42300C 802A953C 00440018 */  mult      $v0, $a0
/* 423010 802A9540 000217C3 */  sra       $v0, $v0, 0x1f
/* 423014 802A9544 96230044 */  lhu       $v1, 0x44($s1)
/* 423018 802A9548 00003810 */  mfhi      $a3
/* 42301C 802A954C 00072143 */  sra       $a0, $a3, 5
/* 423020 802A9550 00822023 */  subu      $a0, $a0, $v0
/* 423024 802A9554 00641821 */  addu      $v1, $v1, $a0
/* 423028 802A9558 A6230044 */  sh        $v1, 0x44($s1)
.L802A955C:
/* 42302C 802A955C 86220044 */  lh        $v0, 0x44($s1)
/* 423030 802A9560 28422710 */  slti      $v0, $v0, 0x2710
/* 423034 802A9564 14400010 */  bnez      $v0, .L802A95A8
/* 423038 802A9568 3C0451EB */   lui      $a0, 0x51eb
/* 42303C 802A956C 8E300014 */  lw        $s0, 0x14($s1)
/* 423040 802A9570 86250056 */  lh        $a1, 0x56($s1)
/* 423044 802A9574 86260058 */  lh        $a2, 0x58($s1)
/* 423048 802A9578 24022710 */  addiu     $v0, $zero, 0x2710
/* 42304C 802A957C A6220044 */  sh        $v0, 0x44($s1)
/* 423050 802A9580 24020001 */  addiu     $v0, $zero, 1
/* 423054 802A9584 A6220068 */  sh        $v0, 0x68($s1)
/* 423058 802A9588 0200202D */  daddu     $a0, $s0, $zero
/* 42305C 802A958C 24A50032 */  addiu     $a1, $a1, 0x32
/* 423060 802A9590 0C051261 */  jal       set_hud_element_render_pos
/* 423064 802A9594 24C6001C */   addiu    $a2, $a2, 0x1c
/* 423068 802A9598 0200202D */  daddu     $a0, $s0, $zero
/* 42306C 802A959C 0C05128B */  jal       clear_hud_element_flags
/* 423070 802A95A0 24050002 */   addiu    $a1, $zero, 2
/* 423074 802A95A4 3C0451EB */  lui       $a0, 0x51eb
.L802A95A8:
/* 423078 802A95A8 96230044 */  lhu       $v1, 0x44($s1)
/* 42307C 802A95AC 3484851F */  ori       $a0, $a0, 0x851f
/* 423080 802A95B0 00031C00 */  sll       $v1, $v1, 0x10
/* 423084 802A95B4 00031403 */  sra       $v0, $v1, 0x10
/* 423088 802A95B8 00440018 */  mult      $v0, $a0
/* 42308C 802A95BC 00031FC3 */  sra       $v1, $v1, 0x1f
/* 423090 802A95C0 00003810 */  mfhi      $a3
/* 423094 802A95C4 00071143 */  sra       $v0, $a3, 5
/* 423098 802A95C8 00432023 */  subu      $a0, $v0, $v1
/* 42309C 802A95CC A2440081 */  sb        $a0, 0x81($s2)
/* 4230A0 802A95D0 86220054 */  lh        $v0, 0x54($s1)
/* 4230A4 802A95D4 96230054 */  lhu       $v1, 0x54($s1)
/* 4230A8 802A95D8 14400018 */  bnez      $v0, .L802A963C
/* 4230AC 802A95DC 2462FFFF */   addiu    $v0, $v1, -1
/* 4230B0 802A95E0 00041600 */  sll       $v0, $a0, 0x18
/* 4230B4 802A95E4 00021603 */  sra       $v0, $v0, 0x18
/* 4230B8 802A95E8 86240046 */  lh        $a0, 0x46($s1)
/* 4230BC 802A95EC 24030064 */  addiu     $v1, $zero, 0x64
/* 4230C0 802A95F0 00641823 */  subu      $v1, $v1, $a0
/* 4230C4 802A95F4 0043102A */  slt       $v0, $v0, $v1
/* 4230C8 802A95F8 14400004 */  bnez      $v0, .L802A960C
/* 4230CC 802A95FC 2402FFFE */   addiu    $v0, $zero, -2
/* 4230D0 802A9600 24020001 */  addiu     $v0, $zero, 1
/* 4230D4 802A9604 080AA585 */  j         .L802A9614
/* 4230D8 802A9608 A2420086 */   sb       $v0, 0x86($s2)
.L802A960C:
/* 4230DC 802A960C A2420086 */  sb        $v0, 0x86($s2)
/* 4230E0 802A9610 2402FFFF */  addiu     $v0, $zero, -1
.L802A9614:
/* 4230E4 802A9614 A2420081 */  sb        $v0, 0x81($s2)
/* 4230E8 802A9618 24020014 */  addiu     $v0, $zero, 0x14
/* 4230EC 802A961C A6220054 */  sh        $v0, 0x54($s1)
/* 4230F0 802A9620 2402000C */  addiu     $v0, $zero, 0xc
/* 4230F4 802A9624 080AA593 */  j         L802A964C_42311C
/* 4230F8 802A9628 A622004C */   sh       $v0, 0x4c($s1)
glabel L802A962C_4230FC
/* 4230FC 802A962C 86220054 */  lh        $v0, 0x54($s1)
/* 423100 802A9630 96230054 */  lhu       $v1, 0x54($s1)
/* 423104 802A9634 10400003 */  beqz      $v0, .L802A9644
/* 423108 802A9638 2462FFFF */   addiu    $v0, $v1, -1
.L802A963C:
/* 42310C 802A963C 080AA593 */  j         L802A964C_42311C
/* 423110 802A9640 A6220054 */   sh       $v0, 0x54($s1)
.L802A9644:
/* 423114 802A9644 0C09A327 */  jal       func_80268C9C
/* 423118 802A9648 00000000 */   nop
glabel L802A964C_42311C
/* 42311C 802A964C 8623004C */  lh        $v1, 0x4c($s1)
.L802A9650:
/* 423120 802A9650 24040001 */  addiu     $a0, $zero, 1
/* 423124 802A9654 10640007 */  beq       $v1, $a0, .L802A9674
/* 423128 802A9658 00000000 */   nop
/* 42312C 802A965C 1860001F */  blez      $v1, .L802A96DC
/* 423130 802A9660 2862000C */   slti     $v0, $v1, 0xc
/* 423134 802A9664 1040001D */  beqz      $v0, .L802A96DC
/* 423138 802A9668 2862000A */   slti     $v0, $v1, 0xa
/* 42313C 802A966C 1440001B */  bnez      $v0, .L802A96DC
/* 423140 802A9670 00000000 */   nop
.L802A9674:
/* 423144 802A9674 8622005A */  lh        $v0, 0x5a($s1)
/* 423148 802A9678 14400002 */  bnez      $v0, .L802A9684
/* 42314C 802A967C 24030008 */   addiu    $v1, $zero, 8
/* 423150 802A9680 24030007 */  addiu     $v1, $zero, 7
.L802A9684:
/* 423154 802A9684 8222005C */  lb        $v0, 0x5c($s1)
/* 423158 802A9688 1440000C */  bnez      $v0, .L802A96BC
/* 42315C 802A968C 00000000 */   nop
/* 423160 802A9690 96220046 */  lhu       $v0, 0x46($s1)
/* 423164 802A9694 00431021 */  addu      $v0, $v0, $v1
/* 423168 802A9698 A6220046 */  sh        $v0, 0x46($s1)
/* 42316C 802A969C 00021400 */  sll       $v0, $v0, 0x10
/* 423170 802A96A0 00021403 */  sra       $v0, $v0, 0x10
/* 423174 802A96A4 28420064 */  slti      $v0, $v0, 0x64
/* 423178 802A96A8 1440000C */  bnez      $v0, .L802A96DC
/* 42317C 802A96AC 24020064 */   addiu    $v0, $zero, 0x64
/* 423180 802A96B0 A6220046 */  sh        $v0, 0x46($s1)
/* 423184 802A96B4 080AA5B7 */  j         .L802A96DC
/* 423188 802A96B8 A224005C */   sb       $a0, 0x5c($s1)
.L802A96BC:
/* 42318C 802A96BC 96220046 */  lhu       $v0, 0x46($s1)
/* 423190 802A96C0 00431023 */  subu      $v0, $v0, $v1
/* 423194 802A96C4 A6220046 */  sh        $v0, 0x46($s1)
/* 423198 802A96C8 00021400 */  sll       $v0, $v0, 0x10
/* 42319C 802A96CC 1C400003 */  bgtz      $v0, .L802A96DC
/* 4231A0 802A96D0 00000000 */   nop
/* 4231A4 802A96D4 A6200046 */  sh        $zero, 0x46($s1)
/* 4231A8 802A96D8 A220005C */  sb        $zero, 0x5c($s1)
.L802A96DC:
/* 4231AC 802A96DC 8FBF001C */  lw        $ra, 0x1c($sp)
/* 4231B0 802A96E0 8FB20018 */  lw        $s2, 0x18($sp)
/* 4231B4 802A96E4 8FB10014 */  lw        $s1, 0x14($sp)
/* 4231B8 802A96E8 8FB00010 */  lw        $s0, 0x10($sp)
/* 4231BC 802A96EC 03E00008 */  jr        $ra
/* 4231C0 802A96F0 27BD0020 */   addiu    $sp, $sp, 0x20
