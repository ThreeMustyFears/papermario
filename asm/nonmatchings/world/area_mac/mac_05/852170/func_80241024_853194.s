.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80241024_853194
/* 853194 80241024 27BDFF98 */  addiu     $sp, $sp, -0x68
/* 853198 80241028 AFB40058 */  sw        $s4, 0x58($sp)
/* 85319C 8024102C 0080A02D */  daddu     $s4, $a0, $zero
/* 8531A0 80241030 AFBF0060 */  sw        $ra, 0x60($sp)
/* 8531A4 80241034 AFB5005C */  sw        $s5, 0x5c($sp)
/* 8531A8 80241038 AFB30054 */  sw        $s3, 0x54($sp)
/* 8531AC 8024103C AFB20050 */  sw        $s2, 0x50($sp)
/* 8531B0 80241040 AFB1004C */  sw        $s1, 0x4c($sp)
/* 8531B4 80241044 AFB00048 */  sw        $s0, 0x48($sp)
/* 8531B8 80241048 8E910148 */  lw        $s1, 0x148($s4)
/* 8531BC 8024104C 86240008 */  lh        $a0, 8($s1)
/* 8531C0 80241050 0C00EABB */  jal       get_npc_unsafe
/* 8531C4 80241054 00A0802D */   daddu    $s0, $a1, $zero
/* 8531C8 80241058 8E83000C */  lw        $v1, 0xc($s4)
/* 8531CC 8024105C 0280202D */  daddu     $a0, $s4, $zero
/* 8531D0 80241060 8C650000 */  lw        $a1, ($v1)
/* 8531D4 80241064 0C0B1EAF */  jal       get_variable
/* 8531D8 80241068 0040902D */   daddu    $s2, $v0, $zero
/* 8531DC 8024106C AFA00018 */  sw        $zero, 0x18($sp)
/* 8531E0 80241070 8E2300D0 */  lw        $v1, 0xd0($s1)
/* 8531E4 80241074 8C630094 */  lw        $v1, 0x94($v1)
/* 8531E8 80241078 AFA3001C */  sw        $v1, 0x1c($sp)
/* 8531EC 8024107C 8E2300D0 */  lw        $v1, 0xd0($s1)
/* 8531F0 80241080 8C630080 */  lw        $v1, 0x80($v1)
/* 8531F4 80241084 AFA30020 */  sw        $v1, 0x20($sp)
/* 8531F8 80241088 8E2300D0 */  lw        $v1, 0xd0($s1)
/* 8531FC 8024108C 8C630088 */  lw        $v1, 0x88($v1)
/* 853200 80241090 AFA30024 */  sw        $v1, 0x24($sp)
/* 853204 80241094 8E2300D0 */  lw        $v1, 0xd0($s1)
/* 853208 80241098 8C63008C */  lw        $v1, 0x8c($v1)
/* 85320C 8024109C 27B50018 */  addiu     $s5, $sp, 0x18
/* 853210 802410A0 AFA30028 */  sw        $v1, 0x28($sp)
/* 853214 802410A4 8E2300D0 */  lw        $v1, 0xd0($s1)
/* 853218 802410A8 3C014282 */  lui       $at, 0x4282
/* 85321C 802410AC 44810000 */  mtc1      $at, $f0
/* 853220 802410B0 8C630090 */  lw        $v1, 0x90($v1)
/* 853224 802410B4 0040982D */  daddu     $s3, $v0, $zero
/* 853228 802410B8 E7A00030 */  swc1      $f0, 0x30($sp)
/* 85322C 802410BC A7A00034 */  sh        $zero, 0x34($sp)
/* 853230 802410C0 16000005 */  bnez      $s0, .L802410D8
/* 853234 802410C4 AFA3002C */   sw       $v1, 0x2c($sp)
/* 853238 802410C8 8E2200B0 */  lw        $v0, 0xb0($s1)
/* 85323C 802410CC 30420004 */  andi      $v0, $v0, 4
/* 853240 802410D0 10400044 */  beqz      $v0, .L802411E4
/* 853244 802410D4 00000000 */   nop      
.L802410D8:
/* 853248 802410D8 2404F7FF */  addiu     $a0, $zero, -0x801
/* 85324C 802410DC AE800070 */  sw        $zero, 0x70($s4)
/* 853250 802410E0 A640008E */  sh        $zero, 0x8e($s2)
/* 853254 802410E4 8E2200CC */  lw        $v0, 0xcc($s1)
/* 853258 802410E8 8E430000 */  lw        $v1, ($s2)
/* 85325C 802410EC 8C420000 */  lw        $v0, ($v0)
/* 853260 802410F0 00641824 */  and       $v1, $v1, $a0
/* 853264 802410F4 AE430000 */  sw        $v1, ($s2)
/* 853268 802410F8 AE420028 */  sw        $v0, 0x28($s2)
/* 85326C 802410FC 8E2200D0 */  lw        $v0, 0xd0($s1)
/* 853270 80241100 8C420098 */  lw        $v0, 0x98($v0)
/* 853274 80241104 54400005 */  bnel      $v0, $zero, .L8024111C
/* 853278 80241108 2402FDFF */   addiu    $v0, $zero, -0x201
/* 85327C 8024110C 34620200 */  ori       $v0, $v1, 0x200
/* 853280 80241110 2403FFF7 */  addiu     $v1, $zero, -9
/* 853284 80241114 08090449 */  j         .L80241124
/* 853288 80241118 00431024 */   and      $v0, $v0, $v1
.L8024111C:
/* 85328C 8024111C 00621024 */  and       $v0, $v1, $v0
/* 853290 80241120 34420008 */  ori       $v0, $v0, 8
.L80241124:
/* 853294 80241124 AE420000 */  sw        $v0, ($s2)
/* 853298 80241128 8E2200B0 */  lw        $v0, 0xb0($s1)
/* 85329C 8024112C 30420004 */  andi      $v0, $v0, 4
/* 8532A0 80241130 10400008 */  beqz      $v0, .L80241154
/* 8532A4 80241134 24020063 */   addiu    $v0, $zero, 0x63
/* 8532A8 80241138 AE820070 */  sw        $v0, 0x70($s4)
/* 8532AC 8024113C AE800074 */  sw        $zero, 0x74($s4)
/* 8532B0 80241140 8E2200B0 */  lw        $v0, 0xb0($s1)
/* 8532B4 80241144 2403FFFB */  addiu     $v1, $zero, -5
/* 8532B8 80241148 00431024 */  and       $v0, $v0, $v1
/* 8532BC 8024114C 08090460 */  j         .L80241180
/* 8532C0 80241150 AE2200B0 */   sw       $v0, 0xb0($s1)
.L80241154:
/* 8532C4 80241154 8E220000 */  lw        $v0, ($s1)
/* 8532C8 80241158 3C034000 */  lui       $v1, 0x4000
/* 8532CC 8024115C 00431024 */  and       $v0, $v0, $v1
/* 8532D0 80241160 10400007 */  beqz      $v0, .L80241180
/* 8532D4 80241164 3C03BFFF */   lui      $v1, 0xbfff
/* 8532D8 80241168 2402000C */  addiu     $v0, $zero, 0xc
/* 8532DC 8024116C AE820070 */  sw        $v0, 0x70($s4)
/* 8532E0 80241170 8E220000 */  lw        $v0, ($s1)
/* 8532E4 80241174 3463FFFF */  ori       $v1, $v1, 0xffff
/* 8532E8 80241178 00431024 */  and       $v0, $v0, $v1
/* 8532EC 8024117C AE220000 */  sw        $v0, ($s1)
.L80241180:
/* 8532F0 80241180 27A50038 */  addiu     $a1, $sp, 0x38
/* 8532F4 80241184 27A6003C */  addiu     $a2, $sp, 0x3c
/* 8532F8 80241188 C6400038 */  lwc1      $f0, 0x38($s2)
/* 8532FC 8024118C 864200A8 */  lh        $v0, 0xa8($s2)
/* 853300 80241190 3C0142C8 */  lui       $at, 0x42c8
/* 853304 80241194 44812000 */  mtc1      $at, $f4
/* 853308 80241198 44823000 */  mtc1      $v0, $f6
/* 85330C 8024119C 00000000 */  nop       
/* 853310 802411A0 468031A0 */  cvt.s.w   $f6, $f6
/* 853314 802411A4 27A20044 */  addiu     $v0, $sp, 0x44
/* 853318 802411A8 E7A00038 */  swc1      $f0, 0x38($sp)
/* 85331C 802411AC C640003C */  lwc1      $f0, 0x3c($s2)
/* 853320 802411B0 C6420040 */  lwc1      $f2, 0x40($s2)
/* 853324 802411B4 46060000 */  add.s     $f0, $f0, $f6
/* 853328 802411B8 E7A40044 */  swc1      $f4, 0x44($sp)
/* 85332C 802411BC E7A20040 */  swc1      $f2, 0x40($sp)
/* 853330 802411C0 E7A0003C */  swc1      $f0, 0x3c($sp)
/* 853334 802411C4 AFA20010 */  sw        $v0, 0x10($sp)
/* 853338 802411C8 8E440080 */  lw        $a0, 0x80($s2)
/* 85333C 802411CC 0C0372DF */  jal       func_800DCB7C
/* 853340 802411D0 27A70040 */   addiu    $a3, $sp, 0x40
/* 853344 802411D4 10400003 */  beqz      $v0, .L802411E4
/* 853348 802411D8 00000000 */   nop      
/* 85334C 802411DC C7A0003C */  lwc1      $f0, 0x3c($sp)
/* 853350 802411E0 E640003C */  swc1      $f0, 0x3c($s2)
.L802411E4:
/* 853354 802411E4 8E830070 */  lw        $v1, 0x70($s4)
/* 853358 802411E8 2C620064 */  sltiu     $v0, $v1, 0x64
/* 85335C 802411EC 10400042 */  beqz      $v0, .L802412F8
/* 853360 802411F0 00031080 */   sll      $v0, $v1, 2
/* 853364 802411F4 3C018025 */  lui       $at, 0x8025
/* 853368 802411F8 00220821 */  addu      $at, $at, $v0
/* 85336C 802411FC 8C2227C0 */  lw        $v0, 0x27c0($at)
/* 853370 80241200 00400008 */  jr        $v0
/* 853374 80241204 00000000 */   nop      
/* 853378 80241208 0280202D */  daddu     $a0, $s4, $zero
/* 85337C 8024120C 0260282D */  daddu     $a1, $s3, $zero
/* 853380 80241210 0C090124 */  jal       func_80240490_852600
/* 853384 80241214 02A0302D */   daddu    $a2, $s5, $zero
/* 853388 80241218 0280202D */  daddu     $a0, $s4, $zero
/* 85338C 8024121C 0260282D */  daddu     $a1, $s3, $zero
/* 853390 80241220 0C09017A */  jal       func_802405E8_852758
/* 853394 80241224 02A0302D */   daddu    $a2, $s5, $zero
/* 853398 80241228 080904BE */  j         .L802412F8
/* 85339C 8024122C 00000000 */   nop      
/* 8533A0 80241230 0280202D */  daddu     $a0, $s4, $zero
/* 8533A4 80241234 0260282D */  daddu     $a1, $s3, $zero
/* 8533A8 80241238 0C090224 */  jal       UnkNpcAIFunc1
/* 8533AC 8024123C 02A0302D */   daddu    $a2, $s5, $zero
/* 8533B0 80241240 0280202D */  daddu     $a0, $s4, $zero
/* 8533B4 80241244 0260282D */  daddu     $a1, $s3, $zero
/* 8533B8 80241248 0C090254 */  jal       func_80240950_852AC0
/* 8533BC 8024124C 02A0302D */   daddu    $a2, $s5, $zero
/* 8533C0 80241250 080904BE */  j         .L802412F8
/* 8533C4 80241254 00000000 */   nop      
/* 8533C8 80241258 0280202D */  daddu     $a0, $s4, $zero
/* 8533CC 8024125C 0260282D */  daddu     $a1, $s3, $zero
/* 8533D0 80241260 0C0902C3 */  jal       func_80240B0C_852C7C
/* 8533D4 80241264 02A0302D */   daddu    $a2, $s5, $zero
/* 8533D8 80241268 080904BE */  j         .L802412F8
/* 8533DC 8024126C 00000000 */   nop      
/* 8533E0 80241270 0280202D */  daddu     $a0, $s4, $zero
/* 8533E4 80241274 0260282D */  daddu     $a1, $s3, $zero
/* 8533E8 80241278 0C0902F0 */  jal       NpcJumpFunc2
/* 8533EC 8024127C 02A0302D */   daddu    $a2, $s5, $zero
/* 8533F0 80241280 0280202D */  daddu     $a0, $s4, $zero
/* 8533F4 80241284 0260282D */  daddu     $a1, $s3, $zero
/* 8533F8 80241288 0C09030D */  jal       NpcJumpFunc
/* 8533FC 8024128C 02A0302D */   daddu    $a2, $s5, $zero
/* 853400 80241290 080904BE */  j         .L802412F8
/* 853404 80241294 00000000 */   nop      
/* 853408 80241298 0280202D */  daddu     $a0, $s4, $zero
/* 85340C 8024129C 0260282D */  daddu     $a1, $s3, $zero
/* 853410 802412A0 0C09032B */  jal       func_80240CAC_852E1C
/* 853414 802412A4 02A0302D */   daddu    $a2, $s5, $zero
/* 853418 802412A8 0280202D */  daddu     $a0, $s4, $zero
/* 85341C 802412AC 0260282D */  daddu     $a1, $s3, $zero
/* 853420 802412B0 0C090377 */  jal       func_80240DDC_852F4C
/* 853424 802412B4 02A0302D */   daddu    $a2, $s5, $zero
/* 853428 802412B8 080904BE */  j         .L802412F8
/* 85342C 802412BC 00000000 */   nop      
/* 853430 802412C0 0280202D */  daddu     $a0, $s4, $zero
/* 853434 802412C4 0260282D */  daddu     $a1, $s3, $zero
/* 853438 802412C8 0C0903BF */  jal       UnkNpcDurationFlagFunc
/* 85343C 802412CC 02A0302D */   daddu    $a2, $s5, $zero
/* 853440 802412D0 080904BE */  j         .L802412F8
/* 853444 802412D4 00000000 */   nop      
/* 853448 802412D8 0280202D */  daddu     $a0, $s4, $zero
/* 85344C 802412DC 0260282D */  daddu     $a1, $s3, $zero
/* 853450 802412E0 0C0903D9 */  jal       func_80240F64_8530D4
/* 853454 802412E4 02A0302D */   daddu    $a2, $s5, $zero
/* 853458 802412E8 080904BE */  j         .L802412F8
/* 85345C 802412EC 00000000 */   nop      
/* 853460 802412F0 0C0129CF */  jal       func_8004A73C
/* 853464 802412F4 0280202D */   daddu    $a0, $s4, $zero
.L802412F8:
/* 853468 802412F8 8FBF0060 */  lw        $ra, 0x60($sp)
/* 85346C 802412FC 8FB5005C */  lw        $s5, 0x5c($sp)
/* 853470 80241300 8FB40058 */  lw        $s4, 0x58($sp)
/* 853474 80241304 8FB30054 */  lw        $s3, 0x54($sp)
/* 853478 80241308 8FB20050 */  lw        $s2, 0x50($sp)
/* 85347C 8024130C 8FB1004C */  lw        $s1, 0x4c($sp)
/* 853480 80241310 8FB00048 */  lw        $s0, 0x48($sp)
/* 853484 80241314 0000102D */  daddu     $v0, $zero, $zero
/* 853488 80241318 03E00008 */  jr        $ra
/* 85348C 8024131C 27BD0068 */   addiu    $sp, $sp, 0x68
