.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel fx_75_main
/* 394280 E0096000 27BDFFB0 */  addiu     $sp, $sp, -0x50
/* 394284 E0096004 F7B40038 */  sdc1      $f20, 0x38($sp)
/* 394288 E0096008 4485A000 */  mtc1      $a1, $f20
/* 39428C E009600C AFB1002C */  sw        $s1, 0x2c($sp)
/* 394290 E0096010 0080882D */  daddu     $s1, $a0, $zero
/* 394294 E0096014 F7B60040 */  sdc1      $f22, 0x40($sp)
/* 394298 E0096018 4486B000 */  mtc1      $a2, $f22
/* 39429C E009601C 27A40010 */  addiu     $a0, $sp, 0x10
/* 3942A0 E0096020 F7B80048 */  sdc1      $f24, 0x48($sp)
/* 3942A4 E0096024 4487C000 */  mtc1      $a3, $f24
/* 3942A8 E0096028 3C02E009 */  lui       $v0, %hi(func_E00960EC)
/* 3942AC E009602C 244260EC */  addiu     $v0, $v0, %lo(func_E00960EC)
/* 3942B0 E0096030 AFA20018 */  sw        $v0, 0x18($sp)
/* 3942B4 E0096034 3C02E009 */  lui       $v0, %hi(func_E00960F4)
/* 3942B8 E0096038 244260F4 */  addiu     $v0, $v0, %lo(func_E00960F4)
/* 3942BC E009603C AFA2001C */  sw        $v0, 0x1c($sp)
/* 3942C0 E0096040 3C02E009 */  lui       $v0, %hi(func_E0096178)
/* 3942C4 E0096044 24426178 */  addiu     $v0, $v0, %lo(func_E0096178)
/* 3942C8 E0096048 AFA20020 */  sw        $v0, 0x20($sp)
/* 3942CC E009604C 2402004B */  addiu     $v0, $zero, 0x4b
/* 3942D0 E0096050 AFBF0030 */  sw        $ra, 0x30($sp)
/* 3942D4 E0096054 AFB00028 */  sw        $s0, 0x28($sp)
/* 3942D8 E0096058 AFA00010 */  sw        $zero, 0x10($sp)
/* 3942DC E009605C AFA00024 */  sw        $zero, 0x24($sp)
/* 3942E0 E0096060 0C080124 */  jal       shim_create_effect_instance
/* 3942E4 E0096064 AFA20014 */   sw       $v0, 0x14($sp)
/* 3942E8 E0096068 24040024 */  addiu     $a0, $zero, 0x24
/* 3942EC E009606C 24030001 */  addiu     $v1, $zero, 1
/* 3942F0 E0096070 0040802D */  daddu     $s0, $v0, $zero
/* 3942F4 E0096074 0C08012C */  jal       shim_general_heap_malloc
/* 3942F8 E0096078 AE030008 */   sw       $v1, 8($s0)
/* 3942FC E009607C 0040202D */  daddu     $a0, $v0, $zero
/* 394300 E0096080 14800003 */  bnez      $a0, .LE0096090
/* 394304 E0096084 AE02000C */   sw       $v0, 0xc($s0)
.LE0096088:
/* 394308 E0096088 08025822 */  j         .LE0096088
/* 39430C E009608C 00000000 */   nop
.LE0096090:
/* 394310 E0096090 3C013F2B */  lui       $at, 0x3f2b
/* 394314 E0096094 3421851F */  ori       $at, $at, 0x851f
/* 394318 E0096098 44810000 */  mtc1      $at, $f0
/* 39431C E009609C AC910000 */  sw        $s1, ($a0)
/* 394320 E00960A0 E4940004 */  swc1      $f20, 4($a0)
/* 394324 E00960A4 E4960008 */  swc1      $f22, 8($a0)
/* 394328 E00960A8 E498000C */  swc1      $f24, 0xc($a0)
/* 39432C E00960AC AC800010 */  sw        $zero, 0x10($a0)
/* 394330 E00960B0 8FA30064 */  lw        $v1, 0x64($sp)
/* 394334 E00960B4 AC800020 */  sw        $zero, 0x20($a0)
/* 394338 E00960B8 AC83001C */  sw        $v1, 0x1c($a0)
/* 39433C E00960BC C7A20060 */  lwc1      $f2, 0x60($sp)
/* 394340 E00960C0 0200102D */  daddu     $v0, $s0, $zero
/* 394344 E00960C4 E4800018 */  swc1      $f0, 0x18($a0)
/* 394348 E00960C8 E4820014 */  swc1      $f2, 0x14($a0)
/* 39434C E00960CC 8FBF0030 */  lw        $ra, 0x30($sp)
/* 394350 E00960D0 8FB1002C */  lw        $s1, 0x2c($sp)
/* 394354 E00960D4 8FB00028 */  lw        $s0, 0x28($sp)
/* 394358 E00960D8 D7B80048 */  ldc1      $f24, 0x48($sp)
/* 39435C E00960DC D7B60040 */  ldc1      $f22, 0x40($sp)
/* 394360 E00960E0 D7B40038 */  ldc1      $f20, 0x38($sp)
/* 394364 E00960E4 03E00008 */  jr        $ra
/* 394368 E00960E8 27BD0050 */   addiu    $sp, $sp, 0x50
