.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802A9178_429498
/* 429498 802A9178 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 42949C 802A917C AFB3001C */  sw        $s3, 0x1c($sp)
/* 4294A0 802A9180 0080982D */  daddu     $s3, $a0, $zero
/* 4294A4 802A9184 AFB10014 */  sw        $s1, 0x14($sp)
/* 4294A8 802A9188 3C11802A */  lui       $s1, %hi(gActionCommandStatus)
/* 4294AC 802A918C 2631FBE0 */  addiu     $s1, $s1, %lo(gActionCommandStatus)
/* 4294B0 802A9190 AFB20018 */  sw        $s2, 0x18($sp)
/* 4294B4 802A9194 3C12800E */  lui       $s2, %hi(gBattleStatus)
/* 4294B8 802A9198 2652C070 */  addiu     $s2, $s2, %lo(gBattleStatus)
/* 4294BC 802A919C AFBF0020 */  sw        $ra, 0x20($sp)
/* 4294C0 802A91A0 AFB00010 */  sw        $s0, 0x10($sp)
/* 4294C4 802A91A4 82420083 */  lb        $v0, 0x83($s2)
/* 4294C8 802A91A8 8E70000C */  lw        $s0, 0xc($s3)
/* 4294CC 802A91AC 10400030 */  beqz      $v0, .L802A9270
/* 4294D0 802A91B0 0240182D */   daddu    $v1, $s2, $zero
/* 4294D4 802A91B4 0C09A216 */  jal       func_80268858
/* 4294D8 802A91B8 00000000 */   nop
/* 4294DC 802A91BC 8E050000 */  lw        $a1, ($s0)
/* 4294E0 802A91C0 26100004 */  addiu     $s0, $s0, 4
/* 4294E4 802A91C4 0C0B1EAF */  jal       get_variable
/* 4294E8 802A91C8 0260202D */   daddu    $a0, $s3, $zero
/* 4294EC 802A91CC A622004E */  sh        $v0, 0x4e($s1)
/* 4294F0 802A91D0 8E050000 */  lw        $a1, ($s0)
/* 4294F4 802A91D4 26100004 */  addiu     $s0, $s0, 4
/* 4294F8 802A91D8 0C0B1EAF */  jal       get_variable
/* 4294FC 802A91DC 0260202D */   daddu    $a0, $s3, $zero
/* 429500 802A91E0 A6220052 */  sh        $v0, 0x52($s1)
/* 429504 802A91E4 8E050000 */  lw        $a1, ($s0)
/* 429508 802A91E8 26100004 */  addiu     $s0, $s0, 4
/* 42950C 802A91EC 0C0B1EAF */  jal       get_variable
/* 429510 802A91F0 0260202D */   daddu    $a0, $s3, $zero
/* 429514 802A91F4 00022400 */  sll       $a0, $v0, 0x10
/* 429518 802A91F8 00042403 */  sra       $a0, $a0, 0x10
/* 42951C 802A91FC 0C09A089 */  jal       func_80268224
/* 429520 802A9200 A6220050 */   sh       $v0, 0x50($s1)
/* 429524 802A9204 A6220050 */  sh        $v0, 0x50($s1)
/* 429528 802A9208 8E050000 */  lw        $a1, ($s0)
/* 42952C 802A920C 0C0B1EAF */  jal       get_variable
/* 429530 802A9210 0260202D */   daddu    $a0, $s3, $zero
/* 429534 802A9214 3C05FFFF */  lui       $a1, 0xffff
/* 429538 802A9218 34A57FFF */  ori       $a1, $a1, 0x7fff
/* 42953C 802A921C A6220064 */  sh        $v0, 0x64($s1)
/* 429540 802A9220 A2200060 */  sb        $zero, 0x60($s1)
/* 429544 802A9224 A6200044 */  sh        $zero, 0x44($s1)
/* 429548 802A9228 A6200048 */  sh        $zero, 0x48($s1)
/* 42954C 802A922C A2400081 */  sb        $zero, 0x81($s2)
/* 429550 802A9230 82220080 */  lb        $v0, 0x80($s1)
/* 429554 802A9234 2403007F */  addiu     $v1, $zero, 0x7f
/* 429558 802A9238 A2430086 */  sb        $v1, 0x86($s2)
/* 42955C 802A923C 8E430000 */  lw        $v1, ($s2)
/* 429560 802A9240 2442FFFF */  addiu     $v0, $v0, -1
/* 429564 802A9244 00021040 */  sll       $v0, $v0, 1
/* 429568 802A9248 00511021 */  addu      $v0, $v0, $s1
/* 42956C 802A924C 00651824 */  and       $v1, $v1, $a1
/* 429570 802A9250 90440075 */  lbu       $a0, 0x75($v0)
/* 429574 802A9254 2402000A */  addiu     $v0, $zero, 0xa
/* 429578 802A9258 AE430000 */  sw        $v1, ($s2)
/* 42957C 802A925C A622004C */  sh        $v0, 0x4c($s1)
/* 429580 802A9260 0C09A446 */  jal       func_80269118
/* 429584 802A9264 A2440082 */   sb       $a0, 0x82($s2)
/* 429588 802A9268 080AA49E */  j         .L802A9278
/* 42958C 802A926C 24020002 */   addiu    $v0, $zero, 2
.L802A9270:
/* 429590 802A9270 A0600081 */  sb        $zero, 0x81($v1)
/* 429594 802A9274 24020002 */  addiu     $v0, $zero, 2
.L802A9278:
/* 429598 802A9278 8FBF0020 */  lw        $ra, 0x20($sp)
/* 42959C 802A927C 8FB3001C */  lw        $s3, 0x1c($sp)
/* 4295A0 802A9280 8FB20018 */  lw        $s2, 0x18($sp)
/* 4295A4 802A9284 8FB10014 */  lw        $s1, 0x14($sp)
/* 4295A8 802A9288 8FB00010 */  lw        $s0, 0x10($sp)
/* 4295AC 802A928C 03E00008 */  jr        $ra
/* 4295B0 802A9290 27BD0028 */   addiu    $sp, $sp, 0x28
