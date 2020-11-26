.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802460E4_806964
/* 806964 802460E4 27BDFF98 */  addiu     $sp, $sp, -0x68
/* 806968 802460E8 AFB40058 */  sw        $s4, 0x58($sp)
/* 80696C 802460EC 0080A02D */  daddu     $s4, $a0, $zero
/* 806970 802460F0 AFBF0060 */  sw        $ra, 0x60($sp)
/* 806974 802460F4 AFB5005C */  sw        $s5, 0x5c($sp)
/* 806978 802460F8 AFB30054 */  sw        $s3, 0x54($sp)
/* 80697C 802460FC AFB20050 */  sw        $s2, 0x50($sp)
/* 806980 80246100 AFB1004C */  sw        $s1, 0x4c($sp)
/* 806984 80246104 AFB00048 */  sw        $s0, 0x48($sp)
/* 806988 80246108 8E910148 */  lw        $s1, 0x148($s4)
/* 80698C 8024610C 86240008 */  lh        $a0, 8($s1)
/* 806990 80246110 0C00EABB */  jal       get_npc_unsafe
/* 806994 80246114 00A0802D */   daddu    $s0, $a1, $zero
/* 806998 80246118 8E83000C */  lw        $v1, 0xc($s4)
/* 80699C 8024611C 0280202D */  daddu     $a0, $s4, $zero
/* 8069A0 80246120 8C650000 */  lw        $a1, ($v1)
/* 8069A4 80246124 0C0B1EAF */  jal       get_variable
/* 8069A8 80246128 0040902D */   daddu    $s2, $v0, $zero
/* 8069AC 8024612C AFA00018 */  sw        $zero, 0x18($sp)
/* 8069B0 80246130 8E2300D0 */  lw        $v1, 0xd0($s1)
/* 8069B4 80246134 8C630094 */  lw        $v1, 0x94($v1)
/* 8069B8 80246138 AFA3001C */  sw        $v1, 0x1c($sp)
/* 8069BC 8024613C 8E2300D0 */  lw        $v1, 0xd0($s1)
/* 8069C0 80246140 8C630080 */  lw        $v1, 0x80($v1)
/* 8069C4 80246144 AFA30020 */  sw        $v1, 0x20($sp)
/* 8069C8 80246148 8E2300D0 */  lw        $v1, 0xd0($s1)
/* 8069CC 8024614C 8C630088 */  lw        $v1, 0x88($v1)
/* 8069D0 80246150 AFA30024 */  sw        $v1, 0x24($sp)
/* 8069D4 80246154 8E2300D0 */  lw        $v1, 0xd0($s1)
/* 8069D8 80246158 8C63008C */  lw        $v1, 0x8c($v1)
/* 8069DC 8024615C 27B50018 */  addiu     $s5, $sp, 0x18
/* 8069E0 80246160 AFA30028 */  sw        $v1, 0x28($sp)
/* 8069E4 80246164 8E2300D0 */  lw        $v1, 0xd0($s1)
/* 8069E8 80246168 3C014282 */  lui       $at, 0x4282
/* 8069EC 8024616C 44810000 */  mtc1      $at, $f0
/* 8069F0 80246170 8C630090 */  lw        $v1, 0x90($v1)
/* 8069F4 80246174 0040982D */  daddu     $s3, $v0, $zero
/* 8069F8 80246178 E7A00030 */  swc1      $f0, 0x30($sp)
/* 8069FC 8024617C A7A00034 */  sh        $zero, 0x34($sp)
/* 806A00 80246180 16000005 */  bnez      $s0, .L80246198
/* 806A04 80246184 AFA3002C */   sw       $v1, 0x2c($sp)
/* 806A08 80246188 8E2200B0 */  lw        $v0, 0xb0($s1)
/* 806A0C 8024618C 30420004 */  andi      $v0, $v0, 4
/* 806A10 80246190 10400044 */  beqz      $v0, .L802462A4
/* 806A14 80246194 00000000 */   nop      
.L80246198:
/* 806A18 80246198 2404F7FF */  addiu     $a0, $zero, -0x801
/* 806A1C 8024619C AE800070 */  sw        $zero, 0x70($s4)
/* 806A20 802461A0 A640008E */  sh        $zero, 0x8e($s2)
/* 806A24 802461A4 8E2200CC */  lw        $v0, 0xcc($s1)
/* 806A28 802461A8 8E430000 */  lw        $v1, ($s2)
/* 806A2C 802461AC 8C420000 */  lw        $v0, ($v0)
/* 806A30 802461B0 00641824 */  and       $v1, $v1, $a0
/* 806A34 802461B4 AE430000 */  sw        $v1, ($s2)
/* 806A38 802461B8 AE420028 */  sw        $v0, 0x28($s2)
/* 806A3C 802461BC 8E2200D0 */  lw        $v0, 0xd0($s1)
/* 806A40 802461C0 8C420098 */  lw        $v0, 0x98($v0)
/* 806A44 802461C4 54400005 */  bnel      $v0, $zero, .L802461DC
/* 806A48 802461C8 2402FDFF */   addiu    $v0, $zero, -0x201
/* 806A4C 802461CC 34620200 */  ori       $v0, $v1, 0x200
/* 806A50 802461D0 2403FFF7 */  addiu     $v1, $zero, -9
/* 806A54 802461D4 08091879 */  j         .L802461E4
/* 806A58 802461D8 00431024 */   and      $v0, $v0, $v1
.L802461DC:
/* 806A5C 802461DC 00621024 */  and       $v0, $v1, $v0
/* 806A60 802461E0 34420008 */  ori       $v0, $v0, 8
.L802461E4:
/* 806A64 802461E4 AE420000 */  sw        $v0, ($s2)
/* 806A68 802461E8 8E2200B0 */  lw        $v0, 0xb0($s1)
/* 806A6C 802461EC 30420004 */  andi      $v0, $v0, 4
/* 806A70 802461F0 10400008 */  beqz      $v0, .L80246214
/* 806A74 802461F4 24020063 */   addiu    $v0, $zero, 0x63
/* 806A78 802461F8 AE820070 */  sw        $v0, 0x70($s4)
/* 806A7C 802461FC AE800074 */  sw        $zero, 0x74($s4)
/* 806A80 80246200 8E2200B0 */  lw        $v0, 0xb0($s1)
/* 806A84 80246204 2403FFFB */  addiu     $v1, $zero, -5
/* 806A88 80246208 00431024 */  and       $v0, $v0, $v1
/* 806A8C 8024620C 08091890 */  j         .L80246240
/* 806A90 80246210 AE2200B0 */   sw       $v0, 0xb0($s1)
.L80246214:
/* 806A94 80246214 8E220000 */  lw        $v0, ($s1)
/* 806A98 80246218 3C034000 */  lui       $v1, 0x4000
/* 806A9C 8024621C 00431024 */  and       $v0, $v0, $v1
/* 806AA0 80246220 10400007 */  beqz      $v0, .L80246240
/* 806AA4 80246224 3C03BFFF */   lui      $v1, 0xbfff
/* 806AA8 80246228 2402000C */  addiu     $v0, $zero, 0xc
/* 806AAC 8024622C AE820070 */  sw        $v0, 0x70($s4)
/* 806AB0 80246230 8E220000 */  lw        $v0, ($s1)
/* 806AB4 80246234 3463FFFF */  ori       $v1, $v1, 0xffff
/* 806AB8 80246238 00431024 */  and       $v0, $v0, $v1
/* 806ABC 8024623C AE220000 */  sw        $v0, ($s1)
.L80246240:
/* 806AC0 80246240 27A50038 */  addiu     $a1, $sp, 0x38
/* 806AC4 80246244 27A6003C */  addiu     $a2, $sp, 0x3c
/* 806AC8 80246248 C6400038 */  lwc1      $f0, 0x38($s2)
/* 806ACC 8024624C 864200A8 */  lh        $v0, 0xa8($s2)
/* 806AD0 80246250 3C0142C8 */  lui       $at, 0x42c8
/* 806AD4 80246254 44812000 */  mtc1      $at, $f4
/* 806AD8 80246258 44823000 */  mtc1      $v0, $f6
/* 806ADC 8024625C 00000000 */  nop       
/* 806AE0 80246260 468031A0 */  cvt.s.w   $f6, $f6
/* 806AE4 80246264 27A20044 */  addiu     $v0, $sp, 0x44
/* 806AE8 80246268 E7A00038 */  swc1      $f0, 0x38($sp)
/* 806AEC 8024626C C640003C */  lwc1      $f0, 0x3c($s2)
/* 806AF0 80246270 C6420040 */  lwc1      $f2, 0x40($s2)
/* 806AF4 80246274 46060000 */  add.s     $f0, $f0, $f6
/* 806AF8 80246278 E7A40044 */  swc1      $f4, 0x44($sp)
/* 806AFC 8024627C E7A20040 */  swc1      $f2, 0x40($sp)
/* 806B00 80246280 E7A0003C */  swc1      $f0, 0x3c($sp)
/* 806B04 80246284 AFA20010 */  sw        $v0, 0x10($sp)
/* 806B08 80246288 8E440080 */  lw        $a0, 0x80($s2)
/* 806B0C 8024628C 0C0372DF */  jal       func_800DCB7C
/* 806B10 80246290 27A70040 */   addiu    $a3, $sp, 0x40
/* 806B14 80246294 10400003 */  beqz      $v0, .L802462A4
/* 806B18 80246298 00000000 */   nop      
/* 806B1C 8024629C C7A0003C */  lwc1      $f0, 0x3c($sp)
/* 806B20 802462A0 E640003C */  swc1      $f0, 0x3c($s2)
.L802462A4:
/* 806B24 802462A4 8E830070 */  lw        $v1, 0x70($s4)
/* 806B28 802462A8 2C620064 */  sltiu     $v0, $v1, 0x64
/* 806B2C 802462AC 10400042 */  beqz      $v0, .L802463B8
/* 806B30 802462B0 00031080 */   sll      $v0, $v1, 2
/* 806B34 802462B4 3C018026 */  lui       $at, 0x8026
/* 806B38 802462B8 00220821 */  addu      $at, $at, $v0
/* 806B3C 802462BC 8C2228A0 */  lw        $v0, 0x28a0($at)
/* 806B40 802462C0 00400008 */  jr        $v0
/* 806B44 802462C4 00000000 */   nop      
/* 806B48 802462C8 0280202D */  daddu     $a0, $s4, $zero
/* 806B4C 802462CC 0260282D */  daddu     $a1, $s3, $zero
/* 806B50 802462D0 0C091554 */  jal       func_80245550_805DD0
/* 806B54 802462D4 02A0302D */   daddu    $a2, $s5, $zero
/* 806B58 802462D8 0280202D */  daddu     $a0, $s4, $zero
/* 806B5C 802462DC 0260282D */  daddu     $a1, $s3, $zero
/* 806B60 802462E0 0C0915AA */  jal       func_802456A8_805F28
/* 806B64 802462E4 02A0302D */   daddu    $a2, $s5, $zero
/* 806B68 802462E8 080918EE */  j         .L802463B8
/* 806B6C 802462EC 00000000 */   nop      
/* 806B70 802462F0 0280202D */  daddu     $a0, $s4, $zero
/* 806B74 802462F4 0260282D */  daddu     $a1, $s3, $zero
/* 806B78 802462F8 0C091654 */  jal       UnkNpcAIFunc1
/* 806B7C 802462FC 02A0302D */   daddu    $a2, $s5, $zero
/* 806B80 80246300 0280202D */  daddu     $a0, $s4, $zero
/* 806B84 80246304 0260282D */  daddu     $a1, $s3, $zero
/* 806B88 80246308 0C091684 */  jal       func_80245A10_806290
/* 806B8C 8024630C 02A0302D */   daddu    $a2, $s5, $zero
/* 806B90 80246310 080918EE */  j         .L802463B8
/* 806B94 80246314 00000000 */   nop      
/* 806B98 80246318 0280202D */  daddu     $a0, $s4, $zero
/* 806B9C 8024631C 0260282D */  daddu     $a1, $s3, $zero
/* 806BA0 80246320 0C0916F3 */  jal       func_80245BCC_80644C
/* 806BA4 80246324 02A0302D */   daddu    $a2, $s5, $zero
/* 806BA8 80246328 080918EE */  j         .L802463B8
/* 806BAC 8024632C 00000000 */   nop      
/* 806BB0 80246330 0280202D */  daddu     $a0, $s4, $zero
/* 806BB4 80246334 0260282D */  daddu     $a1, $s3, $zero
/* 806BB8 80246338 0C091720 */  jal       NpcJumpFunc2
/* 806BBC 8024633C 02A0302D */   daddu    $a2, $s5, $zero
/* 806BC0 80246340 0280202D */  daddu     $a0, $s4, $zero
/* 806BC4 80246344 0260282D */  daddu     $a1, $s3, $zero
/* 806BC8 80246348 0C09173D */  jal       NpcJumpFunc
/* 806BCC 8024634C 02A0302D */   daddu    $a2, $s5, $zero
/* 806BD0 80246350 080918EE */  j         .L802463B8
/* 806BD4 80246354 00000000 */   nop      
/* 806BD8 80246358 0280202D */  daddu     $a0, $s4, $zero
/* 806BDC 8024635C 0260282D */  daddu     $a1, $s3, $zero
/* 806BE0 80246360 0C09175B */  jal       func_80245D6C_8065EC
/* 806BE4 80246364 02A0302D */   daddu    $a2, $s5, $zero
/* 806BE8 80246368 0280202D */  daddu     $a0, $s4, $zero
/* 806BEC 8024636C 0260282D */  daddu     $a1, $s3, $zero
/* 806BF0 80246370 0C0917A7 */  jal       func_80245E9C_80671C
/* 806BF4 80246374 02A0302D */   daddu    $a2, $s5, $zero
/* 806BF8 80246378 080918EE */  j         .L802463B8
/* 806BFC 8024637C 00000000 */   nop      
/* 806C00 80246380 0280202D */  daddu     $a0, $s4, $zero
/* 806C04 80246384 0260282D */  daddu     $a1, $s3, $zero
/* 806C08 80246388 0C0917EF */  jal       UnkNpcDurationFlagFunc
/* 806C0C 8024638C 02A0302D */   daddu    $a2, $s5, $zero
/* 806C10 80246390 080918EE */  j         .L802463B8
/* 806C14 80246394 00000000 */   nop      
/* 806C18 80246398 0280202D */  daddu     $a0, $s4, $zero
/* 806C1C 8024639C 0260282D */  daddu     $a1, $s3, $zero
/* 806C20 802463A0 0C091809 */  jal       func_80246024_8068A4
/* 806C24 802463A4 02A0302D */   daddu    $a2, $s5, $zero
/* 806C28 802463A8 080918EE */  j         .L802463B8
/* 806C2C 802463AC 00000000 */   nop      
/* 806C30 802463B0 0C0129CF */  jal       func_8004A73C
/* 806C34 802463B4 0280202D */   daddu    $a0, $s4, $zero
.L802463B8:
/* 806C38 802463B8 8FBF0060 */  lw        $ra, 0x60($sp)
/* 806C3C 802463BC 8FB5005C */  lw        $s5, 0x5c($sp)
/* 806C40 802463C0 8FB40058 */  lw        $s4, 0x58($sp)
/* 806C44 802463C4 8FB30054 */  lw        $s3, 0x54($sp)
/* 806C48 802463C8 8FB20050 */  lw        $s2, 0x50($sp)
/* 806C4C 802463CC 8FB1004C */  lw        $s1, 0x4c($sp)
/* 806C50 802463D0 8FB00048 */  lw        $s0, 0x48($sp)
/* 806C54 802463D4 0000102D */  daddu     $v0, $zero, $zero
/* 806C58 802463D8 03E00008 */  jr        $ra
/* 806C5C 802463DC 27BD0068 */   addiu    $sp, $sp, 0x68
