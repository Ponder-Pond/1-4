.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_E00982EC
/* 395E9C E00982EC 27BDFF80 */  addiu     $sp, $sp, -0x80
/* 395EA0 E00982F0 3C05DB06 */  lui       $a1, 0xdb06
/* 395EA4 E00982F4 AFB50074 */  sw        $s5, 0x74($sp)
/* 395EA8 E00982F8 3C15800A */  lui       $s5, %hi(gMasterGfxPos)
/* 395EAC E00982FC 26B5A66C */  addiu     $s5, $s5, %lo(gMasterGfxPos)
/* 395EB0 E0098300 34A50024 */  ori       $a1, $a1, 0x24
/* 395EB4 E0098304 3C02E700 */  lui       $v0, 0xe700
/* 395EB8 E0098308 AFBF0078 */  sw        $ra, 0x78($sp)
/* 395EBC E009830C AFB40070 */  sw        $s4, 0x70($sp)
/* 395EC0 E0098310 AFB3006C */  sw        $s3, 0x6c($sp)
/* 395EC4 E0098314 AFB20068 */  sw        $s2, 0x68($sp)
/* 395EC8 E0098318 AFB10064 */  sw        $s1, 0x64($sp)
/* 395ECC E009831C AFB00060 */  sw        $s0, 0x60($sp)
/* 395ED0 E0098320 8EA80000 */  lw        $t0, ($s5)
/* 395ED4 E0098324 8C94000C */  lw        $s4, 0xc($a0)
/* 395ED8 E0098328 0100182D */  daddu     $v1, $t0, $zero
/* 395EDC E009832C 8E930044 */  lw        $s3, 0x44($s4)
/* 395EE0 E0098330 25080008 */  addiu     $t0, $t0, 8
/* 395EE4 E0098334 AC620000 */  sw        $v0, ($v1)
/* 395EE8 E0098338 AC600004 */  sw        $zero, 4($v1)
/* 395EEC E009833C AD050000 */  sw        $a1, ($t0)
/* 395EF0 E0098340 8C820010 */  lw        $v0, 0x10($a0)
/* 395EF4 E0098344 8C42001C */  lw        $v0, 0x1c($v0)
/* 395EF8 E0098348 3C038000 */  lui       $v1, 0x8000
/* 395EFC E009834C 00431021 */  addu      $v0, $v0, $v1
/* 395F00 E0098350 AD020004 */  sw        $v0, 4($t0)
/* 395F04 E0098354 C680003C */  lwc1      $f0, 0x3c($s4)
/* 395F08 E0098358 E7A00010 */  swc1      $f0, 0x10($sp)
/* 395F0C E009835C C6800004 */  lwc1      $f0, 4($s4)
/* 395F10 E0098360 3C120001 */  lui       $s2, 1
/* 395F14 E0098364 E7A00014 */  swc1      $f0, 0x14($sp)
/* 395F18 E0098368 C6800008 */  lwc1      $f0, 8($s4)
/* 395F1C E009836C 36521630 */  ori       $s2, $s2, 0x1630
/* 395F20 E0098370 E7A00018 */  swc1      $f0, 0x18($sp)
/* 395F24 E0098374 C680000C */  lwc1      $f0, 0xc($s4)
/* 395F28 E0098378 27A40020 */  addiu     $a0, $sp, 0x20
/* 395F2C E009837C AEA80000 */  sw        $t0, ($s5)
/* 395F30 E0098380 E7A0001C */  swc1      $f0, 0x1c($sp)
/* 395F34 E0098384 8E850024 */  lw        $a1, 0x24($s4)
/* 395F38 E0098388 8E86002C */  lw        $a2, 0x2c($s4)
/* 395F3C E009838C 8E870028 */  lw        $a3, 0x28($s4)
/* 395F40 E0098390 25080008 */  addiu     $t0, $t0, 8
/* 395F44 E0098394 0C080180 */  jal       shim_guPositionF
/* 395F48 E0098398 AEA80000 */   sw       $t0, ($s5)
/* 395F4C E009839C 27A40020 */  addiu     $a0, $sp, 0x20
/* 395F50 E00983A0 3C108007 */  lui       $s0, %hi(gMatrixListPos)
/* 395F54 E00983A4 261041F0 */  addiu     $s0, $s0, %lo(gMatrixListPos)
/* 395F58 E00983A8 3C11800A */  lui       $s1, %hi(gDisplayContext)
/* 395F5C E00983AC 2631A674 */  addiu     $s1, $s1, %lo(gDisplayContext)
/* 395F60 E00983B0 96050000 */  lhu       $a1, ($s0)
/* 395F64 E00983B4 8E220000 */  lw        $v0, ($s1)
/* 395F68 E00983B8 00052980 */  sll       $a1, $a1, 6
/* 395F6C E00983BC 00B22821 */  addu      $a1, $a1, $s2
/* 395F70 E00983C0 0C080118 */  jal       shim_guMtxF2L
/* 395F74 E00983C4 00452821 */   addu     $a1, $v0, $a1
/* 395F78 E00983C8 3C05D7D7 */  lui       $a1, 0xd7d7
/* 395F7C E00983CC 8EA60000 */  lw        $a2, ($s5)
/* 395F80 E00983D0 34A56E00 */  ori       $a1, $a1, 0x6e00
/* 395F84 E00983D4 00C0202D */  daddu     $a0, $a2, $zero
/* 395F88 E00983D8 24C60008 */  addiu     $a2, $a2, 8
/* 395F8C E00983DC AEA60000 */  sw        $a2, ($s5)
/* 395F90 E00983E0 96020000 */  lhu       $v0, ($s0)
/* 395F94 E00983E4 3C03DA38 */  lui       $v1, 0xda38
/* 395F98 E00983E8 AC830000 */  sw        $v1, ($a0)
/* 395F9C E00983EC 24430001 */  addiu     $v1, $v0, 1
/* 395FA0 E00983F0 3042FFFF */  andi      $v0, $v0, 0xffff
/* 395FA4 E00983F4 00021180 */  sll       $v0, $v0, 6
/* 395FA8 E00983F8 A6030000 */  sh        $v1, ($s0)
/* 395FAC E00983FC 8E230000 */  lw        $v1, ($s1)
/* 395FB0 E0098400 00521021 */  addu      $v0, $v0, $s2
/* 395FB4 E0098404 00621821 */  addu      $v1, $v1, $v0
/* 395FB8 E0098408 24C20008 */  addiu     $v0, $a2, 8
/* 395FBC E009840C AC830004 */  sw        $v1, 4($a0)
/* 395FC0 E0098410 AEA20000 */  sw        $v0, ($s5)
/* 395FC4 E0098414 3C02FA00 */  lui       $v0, 0xfa00
/* 395FC8 E0098418 ACC20000 */  sw        $v0, ($a2)
/* 395FCC E009841C 326200FF */  andi      $v0, $s3, 0xff
/* 395FD0 E0098420 00451025 */  or        $v0, $v0, $a1
/* 395FD4 E0098424 ACC20004 */  sw        $v0, 4($a2)
/* 395FD8 E0098428 240200FF */  addiu     $v0, $zero, 0xff
/* 395FDC E009842C 12620005 */  beq       $s3, $v0, .LE0098444
/* 395FE0 E0098430 3C04E200 */   lui      $a0, 0xe200
/* 395FE4 E0098434 3484001C */  ori       $a0, $a0, 0x1c
/* 395FE8 E0098438 3C030050 */  lui       $v1, 0x50
/* 395FEC E009843C 08026114 */  j         .LE0098450
/* 395FF0 E0098440 346349D8 */   ori      $v1, $v1, 0x49d8
.LE0098444:
/* 395FF4 E0098444 3484001C */  ori       $a0, $a0, 0x1c
/* 395FF8 E0098448 3C030055 */  lui       $v1, 0x55
/* 395FFC E009844C 34632078 */  ori       $v1, $v1, 0x2078
.LE0098450:
/* 396000 E0098450 24C20010 */  addiu     $v0, $a2, 0x10
/* 396004 E0098454 AEA20000 */  sw        $v0, ($s5)
/* 396008 E0098458 ACC40008 */  sw        $a0, 8($a2)
/* 39600C E009845C ACC3000C */  sw        $v1, 0xc($a2)
/* 396010 E0098460 3C07D838 */  lui       $a3, 0xd838
/* 396014 E0098464 3C05800A */  lui       $a1, %hi(gMasterGfxPos)
/* 396018 E0098468 24A5A66C */  addiu     $a1, $a1, %lo(gMasterGfxPos)
/* 39601C E009846C 34E70002 */  ori       $a3, $a3, 2
/* 396020 E0098470 3C06DE00 */  lui       $a2, 0xde00
/* 396024 E0098474 8CA40000 */  lw        $a0, ($a1)
/* 396028 E0098478 3C020900 */  lui       $v0, 0x900
/* 39602C E009847C 24420450 */  addiu     $v0, $v0, 0x450
/* 396030 E0098480 0080182D */  daddu     $v1, $a0, $zero
/* 396034 E0098484 24840008 */  addiu     $a0, $a0, 8
/* 396038 E0098488 ACA40000 */  sw        $a0, ($a1)
/* 39603C E009848C AC620004 */  sw        $v0, 4($v1)
/* 396040 E0098490 24820008 */  addiu     $v0, $a0, 8
/* 396044 E0098494 AC660000 */  sw        $a2, ($v1)
/* 396048 E0098498 ACA20000 */  sw        $v0, ($a1)
/* 39604C E009849C AC860000 */  sw        $a2, ($a0)
/* 396050 E00984A0 8E820000 */  lw        $v0, ($s4)
/* 396054 E00984A4 24830010 */  addiu     $v1, $a0, 0x10
/* 396058 E00984A8 ACA30000 */  sw        $v1, ($a1)
/* 39605C E00984AC 00021080 */  sll       $v0, $v0, 2
/* 396060 E00984B0 3C03E00A */  lui       $v1, %hi(D_E0098510)
/* 396064 E00984B4 00621821 */  addu      $v1, $v1, $v0
/* 396068 E00984B8 8C638510 */  lw        $v1, %lo(D_E0098510)($v1)
/* 39606C E00984BC 24820018 */  addiu     $v0, $a0, 0x18
/* 396070 E00984C0 ACA20000 */  sw        $v0, ($a1)
/* 396074 E00984C4 24020040 */  addiu     $v0, $zero, 0x40
/* 396078 E00984C8 AC82000C */  sw        $v0, 0xc($a0)
/* 39607C E00984CC 3C02E700 */  lui       $v0, 0xe700
/* 396080 E00984D0 AC870008 */  sw        $a3, 8($a0)
/* 396084 E00984D4 AC820010 */  sw        $v0, 0x10($a0)
/* 396088 E00984D8 AC800014 */  sw        $zero, 0x14($a0)
/* 39608C E00984DC AC830004 */  sw        $v1, 4($a0)
/* 396090 E00984E0 8FBF0078 */  lw        $ra, 0x78($sp)
/* 396094 E00984E4 8FB50074 */  lw        $s5, 0x74($sp)
/* 396098 E00984E8 8FB40070 */  lw        $s4, 0x70($sp)
/* 39609C E00984EC 8FB3006C */  lw        $s3, 0x6c($sp)
/* 3960A0 E00984F0 8FB20068 */  lw        $s2, 0x68($sp)
/* 3960A4 E00984F4 8FB10064 */  lw        $s1, 0x64($sp)
/* 3960A8 E00984F8 8FB00060 */  lw        $s0, 0x60($sp)
/* 3960AC E00984FC 03E00008 */  jr        $ra
/* 3960B0 E0098500 27BD0080 */   addiu    $sp, $sp, 0x80
/* 3960B4 E0098504 00000000 */  nop
/* 3960B8 E0098508 00000000 */  nop
/* 3960BC E009850C 00000000 */  nop
