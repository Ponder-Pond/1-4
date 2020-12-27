.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8024061C_C471FC
/* C471FC 8024061C 27BDFFB0 */  addiu     $sp, $sp, -0x50
/* C47200 80240620 AFB20038 */  sw        $s2, 0x38($sp)
/* C47204 80240624 0080902D */  daddu     $s2, $a0, $zero
/* C47208 80240628 AFBF0048 */  sw        $ra, 0x48($sp)
/* C4720C 8024062C AFB50044 */  sw        $s5, 0x44($sp)
/* C47210 80240630 AFB40040 */  sw        $s4, 0x40($sp)
/* C47214 80240634 AFB3003C */  sw        $s3, 0x3c($sp)
/* C47218 80240638 AFB10034 */  sw        $s1, 0x34($sp)
/* C4721C 8024063C AFB00030 */  sw        $s0, 0x30($sp)
/* C47220 80240640 8E510148 */  lw        $s1, 0x148($s2)
/* C47224 80240644 86240008 */  lh        $a0, 8($s1)
/* C47228 80240648 0C00EABB */  jal       get_npc_unsafe
/* C4722C 8024064C 00A0802D */   daddu    $s0, $a1, $zero
/* C47230 80240650 8E43000C */  lw        $v1, 0xc($s2)
/* C47234 80240654 0240202D */  daddu     $a0, $s2, $zero
/* C47238 80240658 8C650000 */  lw        $a1, ($v1)
/* C4723C 8024065C 0C0B1EAF */  jal       get_variable
/* C47240 80240660 0040A82D */   daddu    $s5, $v0, $zero
/* C47244 80240664 AFA00010 */  sw        $zero, 0x10($sp)
/* C47248 80240668 8E2300D0 */  lw        $v1, 0xd0($s1)
/* C4724C 8024066C 8C630030 */  lw        $v1, 0x30($v1)
/* C47250 80240670 AFA30014 */  sw        $v1, 0x14($sp)
/* C47254 80240674 8E2300D0 */  lw        $v1, 0xd0($s1)
/* C47258 80240678 8C63001C */  lw        $v1, 0x1c($v1)
/* C4725C 8024067C AFA30018 */  sw        $v1, 0x18($sp)
/* C47260 80240680 8E2300D0 */  lw        $v1, 0xd0($s1)
/* C47264 80240684 8C630024 */  lw        $v1, 0x24($v1)
/* C47268 80240688 AFA3001C */  sw        $v1, 0x1c($sp)
/* C4726C 8024068C 8E2300D0 */  lw        $v1, 0xd0($s1)
/* C47270 80240690 8C630028 */  lw        $v1, 0x28($v1)
/* C47274 80240694 27B40010 */  addiu     $s4, $sp, 0x10
/* C47278 80240698 AFA30020 */  sw        $v1, 0x20($sp)
/* C4727C 8024069C 8E2300D0 */  lw        $v1, 0xd0($s1)
/* C47280 802406A0 3C014282 */  lui       $at, 0x4282
/* C47284 802406A4 44810000 */  mtc1      $at, $f0
/* C47288 802406A8 8C63002C */  lw        $v1, 0x2c($v1)
/* C4728C 802406AC 0040982D */  daddu     $s3, $v0, $zero
/* C47290 802406B0 E7A00028 */  swc1      $f0, 0x28($sp)
/* C47294 802406B4 A7A0002C */  sh        $zero, 0x2c($sp)
/* C47298 802406B8 16000005 */  bnez      $s0, .L802406D0
/* C4729C 802406BC AFA30024 */   sw       $v1, 0x24($sp)
/* C472A0 802406C0 8E2200B0 */  lw        $v0, 0xb0($s1)
/* C472A4 802406C4 30420004 */  andi      $v0, $v0, 4
/* C472A8 802406C8 10400020 */  beqz      $v0, .L8024074C
/* C472AC 802406CC 00000000 */   nop
.L802406D0:
/* C472B0 802406D0 2404F7FF */  addiu     $a0, $zero, -0x801
/* C472B4 802406D4 AE400070 */  sw        $zero, 0x70($s2)
/* C472B8 802406D8 A6A0008E */  sh        $zero, 0x8e($s5)
/* C472BC 802406DC 8E2200CC */  lw        $v0, 0xcc($s1)
/* C472C0 802406E0 8EA30000 */  lw        $v1, ($s5)
/* C472C4 802406E4 8C420000 */  lw        $v0, ($v0)
/* C472C8 802406E8 00641824 */  and       $v1, $v1, $a0
/* C472CC 802406EC AEA30000 */  sw        $v1, ($s5)
/* C472D0 802406F0 AEA20028 */  sw        $v0, 0x28($s5)
/* C472D4 802406F4 8E2200D0 */  lw        $v0, 0xd0($s1)
/* C472D8 802406F8 8C420034 */  lw        $v0, 0x34($v0)
/* C472DC 802406FC 54400005 */  bnel      $v0, $zero, .L80240714
/* C472E0 80240700 2402FDFF */   addiu    $v0, $zero, -0x201
/* C472E4 80240704 34620200 */  ori       $v0, $v1, 0x200
/* C472E8 80240708 2403FFF7 */  addiu     $v1, $zero, -9
/* C472EC 8024070C 080901C7 */  j         .L8024071C
/* C472F0 80240710 00431024 */   and      $v0, $v0, $v1
.L80240714:
/* C472F4 80240714 00621024 */  and       $v0, $v1, $v0
/* C472F8 80240718 34420008 */  ori       $v0, $v0, 8
.L8024071C:
/* C472FC 8024071C AEA20000 */  sw        $v0, ($s5)
/* C47300 80240720 8E2200B0 */  lw        $v0, 0xb0($s1)
/* C47304 80240724 30420004 */  andi      $v0, $v0, 4
/* C47308 80240728 10400007 */  beqz      $v0, .L80240748
/* C4730C 8024072C 24020063 */   addiu    $v0, $zero, 0x63
/* C47310 80240730 AE420070 */  sw        $v0, 0x70($s2)
/* C47314 80240734 AE400074 */  sw        $zero, 0x74($s2)
/* C47318 80240738 8E2200B0 */  lw        $v0, 0xb0($s1)
/* C4731C 8024073C 2403FFFB */  addiu     $v1, $zero, -5
/* C47320 80240740 00431024 */  and       $v0, $v0, $v1
/* C47324 80240744 AE2200B0 */  sw        $v0, 0xb0($s1)
.L80240748:
/* C47328 80240748 AE20006C */  sw        $zero, 0x6c($s1)
.L8024074C:
/* C4732C 8024074C 8E420070 */  lw        $v0, 0x70($s2)
/* C47330 80240750 2842001E */  slti      $v0, $v0, 0x1e
/* C47334 80240754 10400009 */  beqz      $v0, .L8024077C
/* C47338 80240758 00000000 */   nop
/* C4733C 8024075C 8E22006C */  lw        $v0, 0x6c($s1)
/* C47340 80240760 14400006 */  bnez      $v0, .L8024077C
/* C47344 80240764 00000000 */   nop
/* C47348 80240768 0C090082 */  jal       func_80240208_C46DE8
/* C4734C 8024076C 0240202D */   daddu    $a0, $s2, $zero
/* C47350 80240770 10400002 */  beqz      $v0, .L8024077C
/* C47354 80240774 2402001E */   addiu    $v0, $zero, 0x1e
/* C47358 80240778 AE420070 */  sw        $v0, 0x70($s2)
.L8024077C:
/* C4735C 8024077C 8E430070 */  lw        $v1, 0x70($s2)
/* C47360 80240780 2C620064 */  sltiu     $v0, $v1, 0x64
/* C47364 80240784 10400048 */  beqz      $v0, .L802408A8
/* C47368 80240788 00031080 */   sll      $v0, $v1, 2
/* C4736C 8024078C 3C018024 */  lui       $at, %hi(D_80245398)
/* C47370 80240790 00220821 */  addu      $at, $at, $v0
/* C47374 80240794 8C225398 */  lw        $v0, %lo(D_80245398)($at)
/* C47378 80240798 00400008 */  jr        $v0
/* C4737C 8024079C 00000000 */   nop
/* C47380 802407A0 0240202D */  daddu     $a0, $s2, $zero
/* C47384 802407A4 0260282D */  daddu     $a1, $s3, $zero
/* C47388 802407A8 0C012568 */  jal       func_800495A0
/* C4738C 802407AC 0280302D */   daddu    $a2, $s4, $zero
/* C47390 802407B0 0240202D */  daddu     $a0, $s2, $zero
/* C47394 802407B4 0260282D */  daddu     $a1, $s3, $zero
/* C47398 802407B8 0C0125AE */  jal       func_800496B8
/* C4739C 802407BC 0280302D */   daddu    $a2, $s4, $zero
/* C473A0 802407C0 0809022A */  j         .L802408A8
/* C473A4 802407C4 00000000 */   nop
/* C473A8 802407C8 0240202D */  daddu     $a0, $s2, $zero
/* C473AC 802407CC 0260282D */  daddu     $a1, $s3, $zero
/* C473B0 802407D0 0C0126D1 */  jal       func_80049B44
/* C473B4 802407D4 0280302D */   daddu    $a2, $s4, $zero
/* C473B8 802407D8 0240202D */  daddu     $a0, $s2, $zero
/* C473BC 802407DC 0260282D */  daddu     $a1, $s3, $zero
/* C473C0 802407E0 0C012701 */  jal       func_80049C04
/* C473C4 802407E4 0280302D */   daddu    $a2, $s4, $zero
/* C473C8 802407E8 0809022A */  j         .L802408A8
/* C473CC 802407EC 00000000 */   nop
/* C473D0 802407F0 0240202D */  daddu     $a0, $s2, $zero
/* C473D4 802407F4 0260282D */  daddu     $a1, $s3, $zero
/* C473D8 802407F8 0C01278F */  jal       func_80049E3C
/* C473DC 802407FC 0280302D */   daddu    $a2, $s4, $zero
/* C473E0 80240800 0240202D */  daddu     $a0, $s2, $zero
/* C473E4 80240804 0260282D */  daddu     $a1, $s3, $zero
/* C473E8 80240808 0C0127B3 */  jal       func_80049ECC
/* C473EC 8024080C 0280302D */   daddu    $a2, $s4, $zero
/* C473F0 80240810 0809022A */  j         .L802408A8
/* C473F4 80240814 00000000 */   nop
/* C473F8 80240818 0240202D */  daddu     $a0, $s2, $zero
/* C473FC 8024081C 0260282D */  daddu     $a1, $s3, $zero
/* C47400 80240820 0C0127DF */  jal       func_80049F7C
/* C47404 80240824 0280302D */   daddu    $a2, $s4, $zero
/* C47408 80240828 0240202D */  daddu     $a0, $s2, $zero
/* C4740C 8024082C 0260282D */  daddu     $a1, $s3, $zero
/* C47410 80240830 0C012849 */  jal       func_8004A124
/* C47414 80240834 0280302D */   daddu    $a2, $s4, $zero
/* C47418 80240838 0809022A */  j         .L802408A8
/* C4741C 8024083C 00000000 */   nop
/* C47420 80240840 0240202D */  daddu     $a0, $s2, $zero
/* C47424 80240844 0260282D */  daddu     $a1, $s3, $zero
/* C47428 80240848 0C0128FA */  jal       func_8004A3E8
/* C4742C 8024084C 0280302D */   daddu    $a2, $s4, $zero
/* C47430 80240850 0809022A */  j         .L802408A8
/* C47434 80240854 00000000 */   nop
/* C47438 80240858 0C090000 */  jal       UnkNpcAIFunc6
/* C4743C 8024085C 0240202D */   daddu    $a0, $s2, $zero
/* C47440 80240860 0C09001B */  jal       UnkNpcAIFunc7
/* C47444 80240864 0240202D */   daddu    $a0, $s2, $zero
/* C47448 80240868 8E430070 */  lw        $v1, 0x70($s2)
/* C4744C 8024086C 24020020 */  addiu     $v0, $zero, 0x20
/* C47450 80240870 1462000D */  bne       $v1, $v0, .L802408A8
/* C47454 80240874 00000000 */   nop
/* C47458 80240878 0C090037 */  jal       dgb_09_UnkNpcAIFunc8
/* C4745C 8024087C 0240202D */   daddu    $a0, $s2, $zero
/* C47460 80240880 8E430070 */  lw        $v1, 0x70($s2)
/* C47464 80240884 24020021 */  addiu     $v0, $zero, 0x21
/* C47468 80240888 14620007 */  bne       $v1, $v0, .L802408A8
/* C4746C 8024088C 00000000 */   nop
/* C47470 80240890 0C09006D */  jal       UnkNpcAIFunc5
/* C47474 80240894 0240202D */   daddu    $a0, $s2, $zero
/* C47478 80240898 0809022A */  j         .L802408A8
/* C4747C 8024089C 00000000 */   nop
/* C47480 802408A0 0C0129CF */  jal       func_8004A73C
/* C47484 802408A4 0240202D */   daddu    $a0, $s2, $zero
.L802408A8:
/* C47488 802408A8 8FBF0048 */  lw        $ra, 0x48($sp)
/* C4748C 802408AC 8FB50044 */  lw        $s5, 0x44($sp)
/* C47490 802408B0 8FB40040 */  lw        $s4, 0x40($sp)
/* C47494 802408B4 8FB3003C */  lw        $s3, 0x3c($sp)
/* C47498 802408B8 8FB20038 */  lw        $s2, 0x38($sp)
/* C4749C 802408BC 8FB10034 */  lw        $s1, 0x34($sp)
/* C474A0 802408C0 8FB00030 */  lw        $s0, 0x30($sp)
/* C474A4 802408C4 0000102D */  daddu     $v0, $zero, $zero
/* C474A8 802408C8 03E00008 */  jr        $ra
/* C474AC 802408CC 27BD0050 */   addiu    $sp, $sp, 0x50
