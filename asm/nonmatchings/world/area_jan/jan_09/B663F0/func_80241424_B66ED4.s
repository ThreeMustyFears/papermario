.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80241424_B66ED4
/* B66ED4 80241424 27BDFFB0 */  addiu     $sp, $sp, -0x50
/* B66ED8 80241428 AFB20038 */  sw        $s2, 0x38($sp)
/* B66EDC 8024142C 0080902D */  daddu     $s2, $a0, $zero
/* B66EE0 80241430 AFBF0048 */  sw        $ra, 0x48($sp)
/* B66EE4 80241434 AFB50044 */  sw        $s5, 0x44($sp)
/* B66EE8 80241438 AFB40040 */  sw        $s4, 0x40($sp)
/* B66EEC 8024143C AFB3003C */  sw        $s3, 0x3c($sp)
/* B66EF0 80241440 AFB10034 */  sw        $s1, 0x34($sp)
/* B66EF4 80241444 AFB00030 */  sw        $s0, 0x30($sp)
/* B66EF8 80241448 8E510148 */  lw        $s1, 0x148($s2)
/* B66EFC 8024144C 86240008 */  lh        $a0, 8($s1)
/* B66F00 80241450 0C00EABB */  jal       get_npc_unsafe
/* B66F04 80241454 00A0802D */   daddu    $s0, $a1, $zero
/* B66F08 80241458 8E43000C */  lw        $v1, 0xc($s2)
/* B66F0C 8024145C 0240202D */  daddu     $a0, $s2, $zero
/* B66F10 80241460 8C650000 */  lw        $a1, ($v1)
/* B66F14 80241464 0C0B1EAF */  jal       get_variable
/* B66F18 80241468 0040A82D */   daddu    $s5, $v0, $zero
/* B66F1C 8024146C AFA00010 */  sw        $zero, 0x10($sp)
/* B66F20 80241470 8E2300D0 */  lw        $v1, 0xd0($s1)
/* B66F24 80241474 8C630030 */  lw        $v1, 0x30($v1)
/* B66F28 80241478 AFA30014 */  sw        $v1, 0x14($sp)
/* B66F2C 8024147C 8E2300D0 */  lw        $v1, 0xd0($s1)
/* B66F30 80241480 8C63001C */  lw        $v1, 0x1c($v1)
/* B66F34 80241484 AFA30018 */  sw        $v1, 0x18($sp)
/* B66F38 80241488 8E2300D0 */  lw        $v1, 0xd0($s1)
/* B66F3C 8024148C 8C630024 */  lw        $v1, 0x24($v1)
/* B66F40 80241490 AFA3001C */  sw        $v1, 0x1c($sp)
/* B66F44 80241494 8E2300D0 */  lw        $v1, 0xd0($s1)
/* B66F48 80241498 8C630028 */  lw        $v1, 0x28($v1)
/* B66F4C 8024149C 27B40010 */  addiu     $s4, $sp, 0x10
/* B66F50 802414A0 AFA30020 */  sw        $v1, 0x20($sp)
/* B66F54 802414A4 8E2300D0 */  lw        $v1, 0xd0($s1)
/* B66F58 802414A8 3C014282 */  lui       $at, 0x4282
/* B66F5C 802414AC 44810000 */  mtc1      $at, $f0
/* B66F60 802414B0 8C63002C */  lw        $v1, 0x2c($v1)
/* B66F64 802414B4 0040982D */  daddu     $s3, $v0, $zero
/* B66F68 802414B8 E7A00028 */  swc1      $f0, 0x28($sp)
/* B66F6C 802414BC A7A0002C */  sh        $zero, 0x2c($sp)
/* B66F70 802414C0 16000005 */  bnez      $s0, .L802414D8
/* B66F74 802414C4 AFA30024 */   sw       $v1, 0x24($sp)
/* B66F78 802414C8 8E2200B0 */  lw        $v0, 0xb0($s1)
/* B66F7C 802414CC 30420004 */  andi      $v0, $v0, 4
/* B66F80 802414D0 10400020 */  beqz      $v0, .L80241554
/* B66F84 802414D4 00000000 */   nop      
.L802414D8:
/* B66F88 802414D8 2404F7FF */  addiu     $a0, $zero, -0x801
/* B66F8C 802414DC AE400070 */  sw        $zero, 0x70($s2)
/* B66F90 802414E0 A6A0008E */  sh        $zero, 0x8e($s5)
/* B66F94 802414E4 8E2200CC */  lw        $v0, 0xcc($s1)
/* B66F98 802414E8 8EA30000 */  lw        $v1, ($s5)
/* B66F9C 802414EC 8C420000 */  lw        $v0, ($v0)
/* B66FA0 802414F0 00641824 */  and       $v1, $v1, $a0
/* B66FA4 802414F4 AEA30000 */  sw        $v1, ($s5)
/* B66FA8 802414F8 AEA20028 */  sw        $v0, 0x28($s5)
/* B66FAC 802414FC 8E2200D0 */  lw        $v0, 0xd0($s1)
/* B66FB0 80241500 8C420034 */  lw        $v0, 0x34($v0)
/* B66FB4 80241504 54400005 */  bnel      $v0, $zero, .L8024151C
/* B66FB8 80241508 2402FDFF */   addiu    $v0, $zero, -0x201
/* B66FBC 8024150C 34620200 */  ori       $v0, $v1, 0x200
/* B66FC0 80241510 2403FFF7 */  addiu     $v1, $zero, -9
/* B66FC4 80241514 08090549 */  j         .L80241524
/* B66FC8 80241518 00431024 */   and      $v0, $v0, $v1
.L8024151C:
/* B66FCC 8024151C 00621024 */  and       $v0, $v1, $v0
/* B66FD0 80241520 34420008 */  ori       $v0, $v0, 8
.L80241524:
/* B66FD4 80241524 AEA20000 */  sw        $v0, ($s5)
/* B66FD8 80241528 8E2200B0 */  lw        $v0, 0xb0($s1)
/* B66FDC 8024152C 30420004 */  andi      $v0, $v0, 4
/* B66FE0 80241530 10400007 */  beqz      $v0, .L80241550
/* B66FE4 80241534 24020063 */   addiu    $v0, $zero, 0x63
/* B66FE8 80241538 AE420070 */  sw        $v0, 0x70($s2)
/* B66FEC 8024153C AE400074 */  sw        $zero, 0x74($s2)
/* B66FF0 80241540 8E2200B0 */  lw        $v0, 0xb0($s1)
/* B66FF4 80241544 2403FFFB */  addiu     $v1, $zero, -5
/* B66FF8 80241548 00431024 */  and       $v0, $v0, $v1
/* B66FFC 8024154C AE2200B0 */  sw        $v0, 0xb0($s1)
.L80241550:
/* B67000 80241550 AE20006C */  sw        $zero, 0x6c($s1)
.L80241554:
/* B67004 80241554 8E420070 */  lw        $v0, 0x70($s2)
/* B67008 80241558 2842001E */  slti      $v0, $v0, 0x1e
/* B6700C 8024155C 10400009 */  beqz      $v0, .L80241584
/* B67010 80241560 00000000 */   nop      
/* B67014 80241564 8E22006C */  lw        $v0, 0x6c($s1)
/* B67018 80241568 14400006 */  bnez      $v0, .L80241584
/* B6701C 8024156C 00000000 */   nop      
/* B67020 80241570 0C090357 */  jal       func_80240D5C_B6680C
/* B67024 80241574 0240202D */   daddu    $a0, $s2, $zero
/* B67028 80241578 10400002 */  beqz      $v0, .L80241584
/* B6702C 8024157C 2402001E */   addiu    $v0, $zero, 0x1e
/* B67030 80241580 AE420070 */  sw        $v0, 0x70($s2)
.L80241584:
/* B67034 80241584 8E430070 */  lw        $v1, 0x70($s2)
/* B67038 80241588 2C620064 */  sltiu     $v0, $v1, 0x64
/* B6703C 8024158C 10400048 */  beqz      $v0, .L802416B0
/* B67040 80241590 00031080 */   sll      $v0, $v1, 2
/* B67044 80241594 3C018024 */  lui       $at, 0x8024
/* B67048 80241598 00220821 */  addu      $at, $at, $v0
/* B6704C 8024159C 8C226750 */  lw        $v0, 0x6750($at)
/* B67050 802415A0 00400008 */  jr        $v0
/* B67054 802415A4 00000000 */   nop      
/* B67058 802415A8 0240202D */  daddu     $a0, $s2, $zero
/* B6705C 802415AC 0260282D */  daddu     $a1, $s3, $zero
/* B67060 802415B0 0C012568 */  jal       func_800495A0
/* B67064 802415B4 0280302D */   daddu    $a2, $s4, $zero
/* B67068 802415B8 0240202D */  daddu     $a0, $s2, $zero
/* B6706C 802415BC 0260282D */  daddu     $a1, $s3, $zero
/* B67070 802415C0 0C0125AE */  jal       func_800496B8
/* B67074 802415C4 0280302D */   daddu    $a2, $s4, $zero
/* B67078 802415C8 080905AC */  j         .L802416B0
/* B6707C 802415CC 00000000 */   nop      
/* B67080 802415D0 0240202D */  daddu     $a0, $s2, $zero
/* B67084 802415D4 0260282D */  daddu     $a1, $s3, $zero
/* B67088 802415D8 0C090250 */  jal       UnkNpcAIFunc4
/* B6708C 802415DC 0280302D */   daddu    $a2, $s4, $zero
/* B67090 802415E0 0240202D */  daddu     $a0, $s2, $zero
/* B67094 802415E4 0260282D */  daddu     $a1, $s3, $zero
/* B67098 802415E8 0C090264 */  jal       func_80240990_B66440
/* B6709C 802415EC 0280302D */   daddu    $a2, $s4, $zero
/* B670A0 802415F0 080905AC */  j         .L802416B0
/* B670A4 802415F4 00000000 */   nop      
/* B670A8 802415F8 0240202D */  daddu     $a0, $s2, $zero
/* B670AC 802415FC 0260282D */  daddu     $a1, $s3, $zero
/* B670B0 80241600 0C01278F */  jal       func_80049E3C
/* B670B4 80241604 0280302D */   daddu    $a2, $s4, $zero
/* B670B8 80241608 0240202D */  daddu     $a0, $s2, $zero
/* B670BC 8024160C 0260282D */  daddu     $a1, $s3, $zero
/* B670C0 80241610 0C0127B3 */  jal       func_80049ECC
/* B670C4 80241614 0280302D */   daddu    $a2, $s4, $zero
/* B670C8 80241618 080905AC */  j         .L802416B0
/* B670CC 8024161C 00000000 */   nop      
/* B670D0 80241620 0240202D */  daddu     $a0, $s2, $zero
/* B670D4 80241624 0260282D */  daddu     $a1, $s3, $zero
/* B670D8 80241628 0C0127DF */  jal       func_80049F7C
/* B670DC 8024162C 0280302D */   daddu    $a2, $s4, $zero
/* B670E0 80241630 0240202D */  daddu     $a0, $s2, $zero
/* B670E4 80241634 0260282D */  daddu     $a1, $s3, $zero
/* B670E8 80241638 0C012849 */  jal       func_8004A124
/* B670EC 8024163C 0280302D */   daddu    $a2, $s4, $zero
/* B670F0 80241640 080905AC */  j         .L802416B0
/* B670F4 80241644 00000000 */   nop      
/* B670F8 80241648 0240202D */  daddu     $a0, $s2, $zero
/* B670FC 8024164C 0260282D */  daddu     $a1, $s3, $zero
/* B67100 80241650 0C0128FA */  jal       func_8004A3E8
/* B67104 80241654 0280302D */   daddu    $a2, $s4, $zero
/* B67108 80241658 080905AC */  j         .L802416B0
/* B6710C 8024165C 00000000 */   nop      
/* B67110 80241660 0C0902D5 */  jal       UnkNpcAIFunc6
/* B67114 80241664 0240202D */   daddu    $a0, $s2, $zero
/* B67118 80241668 0C0902F0 */  jal       UnkNpcAIFunc7
/* B6711C 8024166C 0240202D */   daddu    $a0, $s2, $zero
/* B67120 80241670 8E430070 */  lw        $v1, 0x70($s2)
/* B67124 80241674 24020020 */  addiu     $v0, $zero, 0x20
/* B67128 80241678 1462000D */  bne       $v1, $v0, .L802416B0
/* B6712C 8024167C 00000000 */   nop      
/* B67130 80241680 0C09030C */  jal       UnkNpcAIFunc8
/* B67134 80241684 0240202D */   daddu    $a0, $s2, $zero
/* B67138 80241688 8E430070 */  lw        $v1, 0x70($s2)
/* B6713C 8024168C 24020021 */  addiu     $v0, $zero, 0x21
/* B67140 80241690 14620007 */  bne       $v1, $v0, .L802416B0
/* B67144 80241694 00000000 */   nop      
/* B67148 80241698 0C090342 */  jal       UnkNpcAIFunc5
/* B6714C 8024169C 0240202D */   daddu    $a0, $s2, $zero
/* B67150 802416A0 080905AC */  j         .L802416B0
/* B67154 802416A4 00000000 */   nop      
/* B67158 802416A8 0C0129CF */  jal       func_8004A73C
/* B6715C 802416AC 0240202D */   daddu    $a0, $s2, $zero
.L802416B0:
/* B67160 802416B0 8FBF0048 */  lw        $ra, 0x48($sp)
/* B67164 802416B4 8FB50044 */  lw        $s5, 0x44($sp)
/* B67168 802416B8 8FB40040 */  lw        $s4, 0x40($sp)
/* B6716C 802416BC 8FB3003C */  lw        $s3, 0x3c($sp)
/* B67170 802416C0 8FB20038 */  lw        $s2, 0x38($sp)
/* B67174 802416C4 8FB10034 */  lw        $s1, 0x34($sp)
/* B67178 802416C8 8FB00030 */  lw        $s0, 0x30($sp)
/* B6717C 802416CC 0000102D */  daddu     $v0, $zero, $zero
/* B67180 802416D0 03E00008 */  jr        $ra
/* B67184 802416D4 27BD0050 */   addiu    $sp, $sp, 0x50
/* B67188 802416D8 00000000 */  nop       
/* B6718C 802416DC 00000000 */  nop       
