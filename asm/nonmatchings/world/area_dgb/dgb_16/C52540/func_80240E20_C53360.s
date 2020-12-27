.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240E20_C53360
/* C53360 80240E20 27BDFFB0 */  addiu     $sp, $sp, -0x50
/* C53364 80240E24 AFB20038 */  sw        $s2, 0x38($sp)
/* C53368 80240E28 0080902D */  daddu     $s2, $a0, $zero
/* C5336C 80240E2C AFBF0048 */  sw        $ra, 0x48($sp)
/* C53370 80240E30 AFB50044 */  sw        $s5, 0x44($sp)
/* C53374 80240E34 AFB40040 */  sw        $s4, 0x40($sp)
/* C53378 80240E38 AFB3003C */  sw        $s3, 0x3c($sp)
/* C5337C 80240E3C AFB10034 */  sw        $s1, 0x34($sp)
/* C53380 80240E40 AFB00030 */  sw        $s0, 0x30($sp)
/* C53384 80240E44 8E510148 */  lw        $s1, 0x148($s2)
/* C53388 80240E48 86240008 */  lh        $a0, 8($s1)
/* C5338C 80240E4C 0C00EABB */  jal       get_npc_unsafe
/* C53390 80240E50 00A0802D */   daddu    $s0, $a1, $zero
/* C53394 80240E54 8E43000C */  lw        $v1, 0xc($s2)
/* C53398 80240E58 0240202D */  daddu     $a0, $s2, $zero
/* C5339C 80240E5C 8C650000 */  lw        $a1, ($v1)
/* C533A0 80240E60 0C0B1EAF */  jal       get_variable
/* C533A4 80240E64 0040A02D */   daddu    $s4, $v0, $zero
/* C533A8 80240E68 AFA00010 */  sw        $zero, 0x10($sp)
/* C533AC 80240E6C 8E2300D0 */  lw        $v1, 0xd0($s1)
/* C533B0 80240E70 8C630030 */  lw        $v1, 0x30($v1)
/* C533B4 80240E74 AFA30014 */  sw        $v1, 0x14($sp)
/* C533B8 80240E78 8E2300D0 */  lw        $v1, 0xd0($s1)
/* C533BC 80240E7C 8C63001C */  lw        $v1, 0x1c($v1)
/* C533C0 80240E80 AFA30018 */  sw        $v1, 0x18($sp)
/* C533C4 80240E84 8E2300D0 */  lw        $v1, 0xd0($s1)
/* C533C8 80240E88 8C630024 */  lw        $v1, 0x24($v1)
/* C533CC 80240E8C AFA3001C */  sw        $v1, 0x1c($sp)
/* C533D0 80240E90 8E2300D0 */  lw        $v1, 0xd0($s1)
/* C533D4 80240E94 8C630028 */  lw        $v1, 0x28($v1)
/* C533D8 80240E98 27B50010 */  addiu     $s5, $sp, 0x10
/* C533DC 80240E9C AFA30020 */  sw        $v1, 0x20($sp)
/* C533E0 80240EA0 8E2300D0 */  lw        $v1, 0xd0($s1)
/* C533E4 80240EA4 3C014220 */  lui       $at, 0x4220
/* C533E8 80240EA8 44810000 */  mtc1      $at, $f0
/* C533EC 80240EAC 8C63002C */  lw        $v1, 0x2c($v1)
/* C533F0 80240EB0 0040982D */  daddu     $s3, $v0, $zero
/* C533F4 80240EB4 E7A00028 */  swc1      $f0, 0x28($sp)
/* C533F8 80240EB8 A7A0002C */  sh        $zero, 0x2c($sp)
/* C533FC 80240EBC 16000005 */  bnez      $s0, .L80240ED4
/* C53400 80240EC0 AFA30024 */   sw       $v1, 0x24($sp)
/* C53404 80240EC4 8E2200B0 */  lw        $v0, 0xb0($s1)
/* C53408 80240EC8 30420004 */  andi      $v0, $v0, 4
/* C5340C 80240ECC 10400027 */  beqz      $v0, .L80240F6C
/* C53410 80240ED0 00000000 */   nop
.L80240ED4:
/* C53414 80240ED4 2402001E */  addiu     $v0, $zero, 0x1e
/* C53418 80240ED8 2404F7FF */  addiu     $a0, $zero, -0x801
/* C5341C 80240EDC AE400070 */  sw        $zero, 0x70($s2)
/* C53420 80240EE0 A682008E */  sh        $v0, 0x8e($s4)
/* C53424 80240EE4 8E2300CC */  lw        $v1, 0xcc($s1)
/* C53428 80240EE8 8E820000 */  lw        $v0, ($s4)
/* C5342C 80240EEC 8C630028 */  lw        $v1, 0x28($v1)
/* C53430 80240EF0 00441024 */  and       $v0, $v0, $a0
/* C53434 80240EF4 AE820000 */  sw        $v0, ($s4)
/* C53438 80240EF8 AE830028 */  sw        $v1, 0x28($s4)
/* C5343C 80240EFC 8E2200D0 */  lw        $v0, 0xd0($s1)
/* C53440 80240F00 AE20006C */  sw        $zero, 0x6c($s1)
/* C53444 80240F04 8C420034 */  lw        $v0, 0x34($v0)
/* C53448 80240F08 14400006 */  bnez      $v0, .L80240F24
/* C5344C 80240F0C 2403FDFF */   addiu    $v1, $zero, -0x201
/* C53450 80240F10 8E820000 */  lw        $v0, ($s4)
/* C53454 80240F14 2403FFF7 */  addiu     $v1, $zero, -9
/* C53458 80240F18 34420200 */  ori       $v0, $v0, 0x200
/* C5345C 80240F1C 080903CC */  j         .L80240F30
/* C53460 80240F20 00431024 */   and      $v0, $v0, $v1
.L80240F24:
/* C53464 80240F24 8E820000 */  lw        $v0, ($s4)
/* C53468 80240F28 00431024 */  and       $v0, $v0, $v1
/* C5346C 80240F2C 34420008 */  ori       $v0, $v0, 8
.L80240F30:
/* C53470 80240F30 AE820000 */  sw        $v0, ($s4)
/* C53474 80240F34 8E2200B0 */  lw        $v0, 0xb0($s1)
/* C53478 80240F38 30420004 */  andi      $v0, $v0, 4
/* C5347C 80240F3C 10400007 */  beqz      $v0, .L80240F5C
/* C53480 80240F40 24020063 */   addiu    $v0, $zero, 0x63
/* C53484 80240F44 AE420070 */  sw        $v0, 0x70($s2)
/* C53488 80240F48 24020028 */  addiu     $v0, $zero, 0x28
/* C5348C 80240F4C AE420074 */  sw        $v0, 0x74($s2)
/* C53490 80240F50 8E2200CC */  lw        $v0, 0xcc($s1)
/* C53494 80240F54 8C420000 */  lw        $v0, ($v0)
/* C53498 80240F58 AE820028 */  sw        $v0, 0x28($s4)
.L80240F5C:
/* C5349C 80240F5C 8E2200B0 */  lw        $v0, 0xb0($s1)
/* C534A0 80240F60 2403FFFB */  addiu     $v1, $zero, -5
/* C534A4 80240F64 00431024 */  and       $v0, $v0, $v1
/* C534A8 80240F68 AE2200B0 */  sw        $v0, 0xb0($s1)
.L80240F6C:
/* C534AC 80240F6C 8E420070 */  lw        $v0, 0x70($s2)
/* C534B0 80240F70 2442FFF6 */  addiu     $v0, $v0, -0xa
/* C534B4 80240F74 2C420014 */  sltiu     $v0, $v0, 0x14
/* C534B8 80240F78 10400009 */  beqz      $v0, .L80240FA0
/* C534BC 80240F7C 00000000 */   nop
/* C534C0 80240F80 8E22006C */  lw        $v0, 0x6c($s1)
/* C534C4 80240F84 14400006 */  bnez      $v0, .L80240FA0
/* C534C8 80240F88 00000000 */   nop
/* C534CC 80240F8C 0C090082 */  jal       func_80240208_C52748
/* C534D0 80240F90 0240202D */   daddu    $a0, $s2, $zero
/* C534D4 80240F94 10400002 */  beqz      $v0, .L80240FA0
/* C534D8 80240F98 2402001E */   addiu    $v0, $zero, 0x1e
/* C534DC 80240F9C AE420070 */  sw        $v0, 0x70($s2)
.L80240FA0:
/* C534E0 80240FA0 8E430070 */  lw        $v1, 0x70($s2)
/* C534E4 80240FA4 2C620064 */  sltiu     $v0, $v1, 0x64
/* C534E8 80240FA8 10400067 */  beqz      $v0, .L80241148
/* C534EC 80240FAC 00031080 */   sll      $v0, $v1, 2
/* C534F0 80240FB0 3C018024 */  lui       $at, %hi(D_80243200)
/* C534F4 80240FB4 00220821 */  addu      $at, $at, $v0
/* C534F8 80240FB8 8C223200 */  lw        $v0, %lo(D_80243200)($at)
/* C534FC 80240FBC 00400008 */  jr        $v0
/* C53500 80240FC0 00000000 */   nop
/* C53504 80240FC4 0240202D */  daddu     $a0, $s2, $zero
/* C53508 80240FC8 0260282D */  daddu     $a1, $s3, $zero
/* C5350C 80240FCC 0C090187 */  jal       func_8024061C_C52B5C
/* C53510 80240FD0 02A0302D */   daddu    $a2, $s5, $zero
/* C53514 80240FD4 08090452 */  j         .L80241148
/* C53518 80240FD8 00000000 */   nop
/* C5351C 80240FDC 0240202D */  daddu     $a0, $s2, $zero
/* C53520 80240FE0 0260282D */  daddu     $a1, $s3, $zero
/* C53524 80240FE4 0C0901A9 */  jal       func_802406A4_C52BE4
/* C53528 80240FE8 02A0302D */   daddu    $a2, $s5, $zero
/* C5352C 80240FEC 08090452 */  j         .L80241148
/* C53530 80240FF0 00000000 */   nop
/* C53534 80240FF4 0240202D */  daddu     $a0, $s2, $zero
/* C53538 80240FF8 0260282D */  daddu     $a1, $s3, $zero
/* C5353C 80240FFC 0C090257 */  jal       func_8024095C_C52E9C
/* C53540 80241000 02A0302D */   daddu    $a2, $s5, $zero
/* C53544 80241004 08090452 */  j         .L80241148
/* C53548 80241008 00000000 */   nop
/* C5354C 8024100C 0240202D */  daddu     $a0, $s2, $zero
/* C53550 80241010 0260282D */  daddu     $a1, $s3, $zero
/* C53554 80241014 0C090270 */  jal       func_802409C0_C52F00
/* C53558 80241018 02A0302D */   daddu    $a2, $s5, $zero
/* C5355C 8024101C 08090452 */  j         .L80241148
/* C53560 80241020 00000000 */   nop
/* C53564 80241024 0240202D */  daddu     $a0, $s2, $zero
/* C53568 80241028 0260282D */  daddu     $a1, $s3, $zero
/* C5356C 8024102C 0C09029A */  jal       func_80240A68_C52FA8
/* C53570 80241030 02A0302D */   daddu    $a2, $s5, $zero
/* C53574 80241034 08090452 */  j         .L80241148
/* C53578 80241038 00000000 */   nop
/* C5357C 8024103C 0240202D */  daddu     $a0, $s2, $zero
/* C53580 80241040 0260282D */  daddu     $a1, $s3, $zero
/* C53584 80241044 0C0127DF */  jal       func_80049F7C
/* C53588 80241048 02A0302D */   daddu    $a2, $s5, $zero
/* C5358C 8024104C 8E430070 */  lw        $v1, 0x70($s2)
/* C53590 80241050 2402000D */  addiu     $v0, $zero, 0xd
/* C53594 80241054 1462003C */  bne       $v1, $v0, .L80241148
/* C53598 80241058 00000000 */   nop
/* C5359C 8024105C 0240202D */  daddu     $a0, $s2, $zero
/* C535A0 80241060 0260282D */  daddu     $a1, $s3, $zero
/* C535A4 80241064 0C012849 */  jal       func_8004A124
/* C535A8 80241068 02A0302D */   daddu    $a2, $s5, $zero
/* C535AC 8024106C 08090452 */  j         .L80241148
/* C535B0 80241070 00000000 */   nop
/* C535B4 80241074 0240202D */  daddu     $a0, $s2, $zero
/* C535B8 80241078 0260282D */  daddu     $a1, $s3, $zero
/* C535BC 8024107C 0C0128FA */  jal       func_8004A3E8
/* C535C0 80241080 02A0302D */   daddu    $a2, $s5, $zero
/* C535C4 80241084 2402000F */  addiu     $v0, $zero, 0xf
/* C535C8 80241088 A682008E */  sh        $v0, 0x8e($s4)
/* C535CC 8024108C 24020028 */  addiu     $v0, $zero, 0x28
/* C535D0 80241090 AE220088 */  sw        $v0, 0x88($s1)
/* C535D4 80241094 24020003 */  addiu     $v0, $zero, 3
/* C535D8 80241098 08090452 */  j         .L80241148
/* C535DC 8024109C AE420070 */   sw       $v0, 0x70($s2)
/* C535E0 802410A0 0C090000 */  jal       UnkNpcAIFunc6
/* C535E4 802410A4 0240202D */   daddu    $a0, $s2, $zero
/* C535E8 802410A8 8E430070 */  lw        $v1, 0x70($s2)
/* C535EC 802410AC 2402001F */  addiu     $v0, $zero, 0x1f
/* C535F0 802410B0 14620025 */  bne       $v1, $v0, .L80241148
/* C535F4 802410B4 00000000 */   nop
/* C535F8 802410B8 0C09001B */  jal       UnkNpcAIFunc7
/* C535FC 802410BC 0240202D */   daddu    $a0, $s2, $zero
/* C53600 802410C0 8E430070 */  lw        $v1, 0x70($s2)
/* C53604 802410C4 24020020 */  addiu     $v0, $zero, 0x20
/* C53608 802410C8 1462001F */  bne       $v1, $v0, .L80241148
/* C5360C 802410CC 00000000 */   nop
/* C53610 802410D0 0C090037 */  jal       dgb_16_UnkNpcAIFunc8
/* C53614 802410D4 0240202D */   daddu    $a0, $s2, $zero
/* C53618 802410D8 08090452 */  j         .L80241148
/* C5361C 802410DC 00000000 */   nop
/* C53620 802410E0 0C09006D */  jal       UnkNpcAIFunc5
/* C53624 802410E4 0240202D */   daddu    $a0, $s2, $zero
/* C53628 802410E8 08090452 */  j         .L80241148
/* C5362C 802410EC 00000000 */   nop
/* C53630 802410F0 0240202D */  daddu     $a0, $s2, $zero
/* C53634 802410F4 0260282D */  daddu     $a1, $s3, $zero
/* C53638 802410F8 0C0902E8 */  jal       func_80240BA0_C530E0
/* C5363C 802410FC 02A0302D */   daddu    $a2, $s5, $zero
/* C53640 80241100 8E430070 */  lw        $v1, 0x70($s2)
/* C53644 80241104 24020029 */  addiu     $v0, $zero, 0x29
/* C53648 80241108 1462000F */  bne       $v1, $v0, .L80241148
/* C5364C 8024110C 00000000 */   nop
/* C53650 80241110 0240202D */  daddu     $a0, $s2, $zero
/* C53654 80241114 0260282D */  daddu     $a1, $s3, $zero
/* C53658 80241118 0C090313 */  jal       func_80240C4C_C5318C
/* C5365C 8024111C 02A0302D */   daddu    $a2, $s5, $zero
/* C53660 80241120 08090452 */  j         .L80241148
/* C53664 80241124 00000000 */   nop
/* C53668 80241128 0240202D */  daddu     $a0, $s2, $zero
/* C5366C 8024112C 0260282D */  daddu     $a1, $s3, $zero
/* C53670 80241130 0C090371 */  jal       func_80240DC4_C53304
/* C53674 80241134 02A0302D */   daddu    $a2, $s5, $zero
/* C53678 80241138 08090452 */  j         .L80241148
/* C5367C 8024113C 00000000 */   nop
/* C53680 80241140 0C0129CF */  jal       func_8004A73C
/* C53684 80241144 0240202D */   daddu    $a0, $s2, $zero
.L80241148:
/* C53688 80241148 8FBF0048 */  lw        $ra, 0x48($sp)
/* C5368C 8024114C 8FB50044 */  lw        $s5, 0x44($sp)
/* C53690 80241150 8FB40040 */  lw        $s4, 0x40($sp)
/* C53694 80241154 8FB3003C */  lw        $s3, 0x3c($sp)
/* C53698 80241158 8FB20038 */  lw        $s2, 0x38($sp)
/* C5369C 8024115C 8FB10034 */  lw        $s1, 0x34($sp)
/* C536A0 80241160 8FB00030 */  lw        $s0, 0x30($sp)
/* C536A4 80241164 0000102D */  daddu     $v0, $zero, $zero
/* C536A8 80241168 03E00008 */  jr        $ra
/* C536AC 8024116C 27BD0050 */   addiu    $sp, $sp, 0x50
