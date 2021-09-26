.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_E005630C
/* 35DD0C E005630C 27BDFFB0 */  addiu     $sp, $sp, -0x50
/* 35DD10 E0056310 AFB40020 */  sw        $s4, 0x20($sp)
/* 35DD14 E0056314 0080A02D */  daddu     $s4, $a0, $zero
/* 35DD18 E0056318 AFBF0024 */  sw        $ra, 0x24($sp)
/* 35DD1C E005631C AFB3001C */  sw        $s3, 0x1c($sp)
/* 35DD20 E0056320 AFB20018 */  sw        $s2, 0x18($sp)
/* 35DD24 E0056324 AFB10014 */  sw        $s1, 0x14($sp)
/* 35DD28 E0056328 AFB00010 */  sw        $s0, 0x10($sp)
/* 35DD2C E005632C F7BC0048 */  sdc1      $f28, 0x48($sp)
/* 35DD30 E0056330 F7BA0040 */  sdc1      $f26, 0x40($sp)
/* 35DD34 E0056334 F7B80038 */  sdc1      $f24, 0x38($sp)
/* 35DD38 E0056338 F7B60030 */  sdc1      $f22, 0x30($sp)
/* 35DD3C E005633C F7B40028 */  sdc1      $f20, 0x28($sp)
/* 35DD40 E0056340 8E84000C */  lw        $a0, 0xc($s4)
/* 35DD44 E0056344 8C820028 */  lw        $v0, 0x28($a0)
/* 35DD48 E0056348 8C85002C */  lw        $a1, 0x2c($a0)
/* 35DD4C E005634C 2442FFFF */  addiu     $v0, $v0, -1
/* 35DD50 E0056350 AC820028 */  sw        $v0, 0x28($a0)
/* 35DD54 E0056354 0040302D */  daddu     $a2, $v0, $zero
/* 35DD58 E0056358 24A20001 */  addiu     $v0, $a1, 1
/* 35DD5C E005635C 04C10005 */  bgez      $a2, .LE0056374
/* 35DD60 E0056360 AC82002C */   sw       $v0, 0x2c($a0)
/* 35DD64 E0056364 0C080128 */  jal       shim_remove_effect
/* 35DD68 E0056368 0280202D */   daddu    $a0, $s4, $zero
/* 35DD6C E005636C 08015AD6 */  j         .LE0056B58
/* 35DD70 E0056370 00000000 */   nop
.LE0056374:
/* 35DD74 E0056374 8C930000 */  lw        $s3, ($a0)
/* 35DD78 E0056378 2842000A */  slti      $v0, $v0, 0xa
/* 35DD7C E005637C 10400010 */  beqz      $v0, .LE00563C0
/* 35DD80 E0056380 240200FF */   addiu    $v0, $zero, 0xff
/* 35DD84 E0056384 8C830024 */  lw        $v1, 0x24($a0)
/* 35DD88 E0056388 3C01E005 */  lui       $at, %hi(D_E0056EB8)
/* 35DD8C E005638C D4206EB8 */  ldc1      $f0, %lo(D_E0056EB8)($at)
/* 35DD90 E0056390 00431023 */  subu      $v0, $v0, $v1
/* 35DD94 E0056394 44821000 */  mtc1      $v0, $f2
/* 35DD98 E0056398 00000000 */  nop
/* 35DD9C E005639C 468010A1 */  cvt.d.w   $f2, $f2
/* 35DDA0 E00563A0 46201082 */  mul.d     $f2, $f2, $f0
/* 35DDA4 E00563A4 00000000 */  nop
/* 35DDA8 E00563A8 44830000 */  mtc1      $v1, $f0
/* 35DDAC E00563AC 00000000 */  nop
/* 35DDB0 E00563B0 46800021 */  cvt.d.w   $f0, $f0
/* 35DDB4 E00563B4 46220000 */  add.d     $f0, $f0, $f2
/* 35DDB8 E00563B8 4620028D */  trunc.w.d $f10, $f0
/* 35DDBC E00563BC E48A0024 */  swc1      $f10, 0x24($a0)
.LE00563C0:
/* 35DDC0 E00563C0 28C2000A */  slti      $v0, $a2, 0xa
/* 35DDC4 E00563C4 10400009 */  beqz      $v0, .LE00563EC
/* 35DDC8 E00563C8 24020001 */   addiu    $v0, $zero, 1
/* 35DDCC E00563CC 3C01E005 */  lui       $at, %hi(D_E0056EC0)
/* 35DDD0 E00563D0 D4226EC0 */  ldc1      $f2, %lo(D_E0056EC0)($at)
/* 35DDD4 E00563D4 C4800024 */  lwc1      $f0, 0x24($a0)
/* 35DDD8 E00563D8 46800021 */  cvt.d.w   $f0, $f0
/* 35DDDC E00563DC 46220002 */  mul.d     $f0, $f0, $f2
/* 35DDE0 E00563E0 00000000 */  nop
/* 35DDE4 E00563E4 4620028D */  trunc.w.d $f10, $f0
/* 35DDE8 E00563E8 E48A0024 */  swc1      $f10, 0x24($a0)
.LE00563EC:
/* 35DDEC E00563EC 126200E6 */  beq       $s3, $v0, .LE0056788
/* 35DDF0 E00563F0 2484003C */   addiu    $a0, $a0, 0x3c
/* 35DDF4 E00563F4 2A620002 */  slti      $v0, $s3, 2
/* 35DDF8 E00563F8 50400005 */  beql      $v0, $zero, .LE0056410
/* 35DDFC E00563FC 24020002 */   addiu    $v0, $zero, 2
/* 35DE00 E0056400 12600007 */  beqz      $s3, .LE0056420
/* 35DE04 E0056404 24120001 */   addiu    $s2, $zero, 1
/* 35DE08 E0056408 08015AD6 */  j         .LE0056B58
/* 35DE0C E005640C 00000000 */   nop
.LE0056410:
/* 35DE10 E0056410 1262019E */  beq       $s3, $v0, .LE0056A8C
/* 35DE14 E0056414 24120001 */   addiu    $s2, $zero, 1
/* 35DE18 E0056418 08015AD6 */  j         .LE0056B58
/* 35DE1C E005641C 00000000 */   nop
.LE0056420:
/* 35DE20 E0056420 8E820008 */  lw        $v0, 8($s4)
/* 35DE24 E0056424 0242102A */  slt       $v0, $s2, $v0
/* 35DE28 E0056428 104001CB */  beqz      $v0, .LE0056B58
/* 35DE2C E005642C 2490000C */   addiu    $s0, $a0, 0xc
/* 35DE30 E0056430 24B10015 */  addiu     $s1, $a1, 0x15
/* 35DE34 E0056434 3C01BD4C */  lui       $at, 0xbd4c
/* 35DE38 E0056438 3421CCCD */  ori       $at, $at, 0xcccd
/* 35DE3C E005643C 4481E000 */  mtc1      $at, $f28
/* 35DE40 E0056440 3C014120 */  lui       $at, 0x4120
/* 35DE44 E0056444 4481D000 */  mtc1      $at, $f26
/* 35DE48 E0056448 3C01E005 */  lui       $at, %hi(D_E0056EC8)
/* 35DE4C E005644C D4346EC8 */  ldc1      $f20, %lo(D_E0056EC8)($at)
/* 35DE50 E0056450 4480C000 */  mtc1      $zero, $f24
/* 35DE54 E0056454 3C01E005 */  lui       $at, %hi(D_E0056ED0)
/* 35DE58 E0056458 D4366ED0 */  ldc1      $f22, %lo(D_E0056ED0)($at)
.LE005645C:
/* 35DE5C E005645C C60C000C */  lwc1      $f12, 0xc($s0)
/* 35DE60 E0056460 0C080140 */  jal       shim_sin_deg
/* 35DE64 E0056464 460C6300 */   add.s    $f12, $f12, $f12
/* 35DE68 E0056468 3C01E005 */  lui       $at, %hi(D_E0056ED8)
/* 35DE6C E005646C D4226ED8 */  ldc1      $f2, %lo(D_E0056ED8)($at)
/* 35DE70 E0056470 46000021 */  cvt.d.s   $f0, $f0
/* 35DE74 E0056474 46220002 */  mul.d     $f0, $f0, $f2
/* 35DE78 E0056478 00000000 */  nop
/* 35DE7C E005647C C6020008 */  lwc1      $f2, 8($s0)
/* 35DE80 E0056480 461C1080 */  add.s     $f2, $f2, $f28
/* 35DE84 E0056484 C6040004 */  lwc1      $f4, 4($s0)
/* 35DE88 E0056488 46200020 */  cvt.s.d   $f0, $f0
/* 35DE8C E005648C 46002000 */  add.s     $f0, $f4, $f0
/* 35DE90 E0056490 E6020008 */  swc1      $f2, 8($s0)
/* 35DE94 E0056494 16600019 */  bnez      $s3, .LE00564FC
/* 35DE98 E0056498 E6000004 */   swc1     $f0, 4($s0)
/* 35DE9C E005649C 3C01E005 */  lui       $at, %hi(D_E0056EE0)
/* 35DEA0 E00564A0 D4226EE0 */  ldc1      $f2, %lo(D_E0056EE0)($at)
/* 35DEA4 E00564A4 46000021 */  cvt.d.s   $f0, $f0
/* 35DEA8 E00564A8 46220002 */  mul.d     $f0, $f0, $f2
/* 35DEAC E00564AC 00000000 */  nop
/* 35DEB0 E00564B0 C60C000C */  lwc1      $f12, 0xc($s0)
/* 35DEB4 E00564B4 46200020 */  cvt.s.d   $f0, $f0
/* 35DEB8 E00564B8 0C080140 */  jal       shim_sin_deg
/* 35DEBC E00564BC E6000004 */   swc1     $f0, 4($s0)
/* 35DEC0 E00564C0 3C01E005 */  lui       $at, %hi(D_E0056EE8)
/* 35DEC4 E00564C4 D4226EE8 */  ldc1      $f2, %lo(D_E0056EE8)($at)
/* 35DEC8 E00564C8 46000021 */  cvt.d.s   $f0, $f0
/* 35DECC E00564CC 46220002 */  mul.d     $f0, $f0, $f2
/* 35DED0 E00564D0 00000000 */  nop
/* 35DED4 E00564D4 3C01E005 */  lui       $at, %hi(D_E0056EF0)
/* 35DED8 E00564D8 D4246EF0 */  ldc1      $f4, %lo(D_E0056EF0)($at)
/* 35DEDC E00564DC C6020008 */  lwc1      $f2, 8($s0)
/* 35DEE0 E00564E0 46240000 */  add.d     $f0, $f0, $f4
/* 35DEE4 E00564E4 460010A1 */  cvt.d.s   $f2, $f2
/* 35DEE8 E00564E8 46201082 */  mul.d     $f2, $f2, $f0
/* 35DEEC E00564EC 00000000 */  nop
/* 35DEF0 E00564F0 462010A0 */  cvt.s.d   $f2, $f2
/* 35DEF4 E00564F4 0801594A */  j         .LE0056528
/* 35DEF8 E00564F8 E6020008 */   swc1     $f2, 8($s0)
.LE00564FC:
/* 35DEFC E00564FC C6000004 */  lwc1      $f0, 4($s0)
/* 35DF00 E0056500 3C01E005 */  lui       $at, %hi(D_E0056EF8)
/* 35DF04 E0056504 D4226EF8 */  ldc1      $f2, %lo(D_E0056EF8)($at)
/* 35DF08 E0056508 46000021 */  cvt.d.s   $f0, $f0
/* 35DF0C E005650C 46220002 */  mul.d     $f0, $f0, $f2
/* 35DF10 E0056510 00000000 */  nop
/* 35DF14 E0056514 C6020008 */  lwc1      $f2, 8($s0)
/* 35DF18 E0056518 461C1080 */  add.s     $f2, $f2, $f28
/* 35DF1C E005651C E6020008 */  swc1      $f2, 8($s0)
/* 35DF20 E0056520 46200020 */  cvt.s.d   $f0, $f0
/* 35DF24 E0056524 E6000004 */  swc1      $f0, 4($s0)
.LE0056528:
/* 35DF28 E0056528 24040032 */  addiu     $a0, $zero, 0x32
/* 35DF2C E005652C 0C080011 */  jal       func_E0200044
/* 35DF30 E0056530 0220282D */   daddu    $a1, $s1, $zero
/* 35DF34 E0056534 2442FFE7 */  addiu     $v0, $v0, -0x19
/* 35DF38 E0056538 C60C0010 */  lwc1      $f12, 0x10($s0)
/* 35DF3C E005653C 44820000 */  mtc1      $v0, $f0
/* 35DF40 E0056540 00000000 */  nop
/* 35DF44 E0056544 46800020 */  cvt.s.w   $f0, $f0
/* 35DF48 E0056548 46006300 */  add.s     $f12, $f12, $f0
/* 35DF4C E005654C 0C080140 */  jal       shim_sin_deg
/* 35DF50 E0056550 E60C0010 */   swc1     $f12, 0x10($s0)
/* 35DF54 E0056554 C60C0010 */  lwc1      $f12, 0x10($s0)
/* 35DF58 E0056558 3C013FE0 */  lui       $at, 0x3fe0
/* 35DF5C E005655C 44811800 */  mtc1      $at, $f3
/* 35DF60 E0056560 44801000 */  mtc1      $zero, $f2
/* 35DF64 E0056564 46006321 */  cvt.d.s   $f12, $f12
/* 35DF68 E0056568 46226302 */  mul.d     $f12, $f12, $f2
/* 35DF6C E005656C 00000000 */  nop
/* 35DF70 E0056570 461A0002 */  mul.s     $f0, $f0, $f26
/* 35DF74 E0056574 00000000 */  nop
/* 35DF78 E0056578 C602000C */  lwc1      $f2, 0xc($s0)
/* 35DF7C E005657C 46001080 */  add.s     $f2, $f2, $f0
/* 35DF80 E0056580 E602000C */  swc1      $f2, 0xc($s0)
/* 35DF84 E0056584 0C080144 */  jal       shim_cos_deg
/* 35DF88 E0056588 46206320 */   cvt.s.d  $f12, $f12
/* 35DF8C E005658C 461A0002 */  mul.s     $f0, $f0, $f26
/* 35DF90 E0056590 00000000 */  nop
/* 35DF94 E0056594 C606FFF8 */  lwc1      $f6, -8($s0)
/* 35DF98 E0056598 C6020004 */  lwc1      $f2, 4($s0)
/* 35DF9C E005659C C604FFFC */  lwc1      $f4, -4($s0)
/* 35DFA0 E00565A0 46023180 */  add.s     $f6, $f6, $f2
/* 35DFA4 E00565A4 C6020008 */  lwc1      $f2, 8($s0)
/* 35DFA8 E00565A8 46022100 */  add.s     $f4, $f4, $f2
/* 35DFAC E00565AC C6020014 */  lwc1      $f2, 0x14($s0)
/* 35DFB0 E00565B0 3C0141F0 */  lui       $at, 0x41f0
/* 35DFB4 E00565B4 44814000 */  mtc1      $at, $f8
/* 35DFB8 E00565B8 46001080 */  add.s     $f2, $f2, $f0
/* 35DFBC E00565BC E606FFF8 */  swc1      $f6, -8($s0)
/* 35DFC0 E00565C0 E604FFFC */  swc1      $f4, -4($s0)
/* 35DFC4 E00565C4 4608203C */  c.lt.s    $f4, $f8
/* 35DFC8 E00565C8 00000000 */  nop
/* 35DFCC E00565CC 45000032 */  bc1f      .LE0056698
/* 35DFD0 E00565D0 E6020014 */   swc1     $f2, 0x14($s0)
/* 35DFD4 E00565D4 3C01C348 */  lui       $at, 0xc348
/* 35DFD8 E00565D8 44810000 */  mtc1      $at, $f0
/* 35DFDC E00565DC 46003086 */  mov.s     $f2, $f6
/* 35DFE0 E00565E0 4602003C */  c.lt.s    $f0, $f2
/* 35DFE4 E00565E4 00000000 */  nop
/* 35DFE8 E00565E8 45000005 */  bc1f      .LE0056600
/* 35DFEC E00565EC 00000000 */   nop
/* 35DFF0 E00565F0 C6000024 */  lwc1      $f0, 0x24($s0)
/* 35DFF4 E00565F4 46000021 */  cvt.d.s   $f0, $f0
/* 35DFF8 E00565F8 08015983 */  j         .LE005660C
/* 35DFFC E00565FC 46340001 */   sub.d    $f0, $f0, $f20
.LE0056600:
/* 35E000 E0056600 C6000024 */  lwc1      $f0, 0x24($s0)
/* 35E004 E0056604 46000021 */  cvt.d.s   $f0, $f0
/* 35E008 E0056608 46340000 */  add.d     $f0, $f0, $f20
.LE005660C:
/* 35E00C E005660C 46200020 */  cvt.s.d   $f0, $f0
/* 35E010 E0056610 E6000024 */  swc1      $f0, 0x24($s0)
/* 35E014 E0056614 C6000000 */  lwc1      $f0, ($s0)
/* 35E018 E0056618 4600C03C */  c.lt.s    $f24, $f0
/* 35E01C E005661C 00000000 */  nop
/* 35E020 E0056620 45000005 */  bc1f      .LE0056638
/* 35E024 E0056624 00000000 */   nop
/* 35E028 E0056628 C600002C */  lwc1      $f0, 0x2c($s0)
/* 35E02C E005662C 46000021 */  cvt.d.s   $f0, $f0
/* 35E030 E0056630 08015991 */  j         .LE0056644
/* 35E034 E0056634 46340001 */   sub.d    $f0, $f0, $f20
.LE0056638:
/* 35E038 E0056638 C600002C */  lwc1      $f0, 0x2c($s0)
/* 35E03C E005663C 46000021 */  cvt.d.s   $f0, $f0
/* 35E040 E0056640 46340000 */  add.d     $f0, $f0, $f20
.LE0056644:
/* 35E044 E0056644 46200020 */  cvt.s.d   $f0, $f0
/* 35E048 E0056648 E600002C */  swc1      $f0, 0x2c($s0)
/* 35E04C E005664C C6040024 */  lwc1      $f4, 0x24($s0)
/* 35E050 E0056650 46002121 */  cvt.d.s   $f4, $f4
/* 35E054 E0056654 46362102 */  mul.d     $f4, $f4, $f22
/* 35E058 E0056658 00000000 */  nop
/* 35E05C E005665C C602002C */  lwc1      $f2, 0x2c($s0)
/* 35E060 E0056660 460010A1 */  cvt.d.s   $f2, $f2
/* 35E064 E0056664 46361082 */  mul.d     $f2, $f2, $f22
/* 35E068 E0056668 00000000 */  nop
/* 35E06C E005666C C6000008 */  lwc1      $f0, 8($s0)
/* 35E070 E0056670 46000021 */  cvt.d.s   $f0, $f0
/* 35E074 E0056674 46360002 */  mul.d     $f0, $f0, $f22
/* 35E078 E0056678 00000000 */  nop
/* 35E07C E005667C 46202120 */  cvt.s.d   $f4, $f4
/* 35E080 E0056680 462010A0 */  cvt.s.d   $f2, $f2
/* 35E084 E0056684 46200020 */  cvt.s.d   $f0, $f0
/* 35E088 E0056688 E6040024 */  swc1      $f4, 0x24($s0)
/* 35E08C E005668C E602002C */  swc1      $f2, 0x2c($s0)
/* 35E090 E0056690 080159CE */  j         .LE0056738
/* 35E094 E0056694 E6000008 */   swc1     $f0, 8($s0)
.LE0056698:
/* 35E098 E0056698 C600FFF8 */  lwc1      $f0, -8($s0)
/* 35E09C E005669C 4600C03C */  c.lt.s    $f24, $f0
/* 35E0A0 E00566A0 00000000 */  nop
/* 35E0A4 E00566A4 45000005 */  bc1f      .LE00566BC
/* 35E0A8 E00566A8 00000000 */   nop
/* 35E0AC E00566AC C6000024 */  lwc1      $f0, 0x24($s0)
/* 35E0B0 E00566B0 46000021 */  cvt.d.s   $f0, $f0
/* 35E0B4 E00566B4 080159B2 */  j         .LE00566C8
/* 35E0B8 E00566B8 46340001 */   sub.d    $f0, $f0, $f20
.LE00566BC:
/* 35E0BC E00566BC C6000024 */  lwc1      $f0, 0x24($s0)
/* 35E0C0 E00566C0 46000021 */  cvt.d.s   $f0, $f0
/* 35E0C4 E00566C4 46340000 */  add.d     $f0, $f0, $f20
.LE00566C8:
/* 35E0C8 E00566C8 46200020 */  cvt.s.d   $f0, $f0
/* 35E0CC E00566CC E6000024 */  swc1      $f0, 0x24($s0)
/* 35E0D0 E00566D0 C6000000 */  lwc1      $f0, ($s0)
/* 35E0D4 E00566D4 4600C03C */  c.lt.s    $f24, $f0
/* 35E0D8 E00566D8 00000000 */  nop
/* 35E0DC E00566DC 45000005 */  bc1f      .LE00566F4
/* 35E0E0 E00566E0 00000000 */   nop
/* 35E0E4 E00566E4 C600002C */  lwc1      $f0, 0x2c($s0)
/* 35E0E8 E00566E8 46000021 */  cvt.d.s   $f0, $f0
/* 35E0EC E00566EC 080159C0 */  j         .LE0056700
/* 35E0F0 E00566F0 46340001 */   sub.d    $f0, $f0, $f20
.LE00566F4:
/* 35E0F4 E00566F4 C600002C */  lwc1      $f0, 0x2c($s0)
/* 35E0F8 E00566F8 46000021 */  cvt.d.s   $f0, $f0
/* 35E0FC E00566FC 46340000 */  add.d     $f0, $f0, $f20
.LE0056700:
/* 35E100 E0056700 46200020 */  cvt.s.d   $f0, $f0
/* 35E104 E0056704 E600002C */  swc1      $f0, 0x2c($s0)
/* 35E108 E0056708 C6020024 */  lwc1      $f2, 0x24($s0)
/* 35E10C E005670C 460010A1 */  cvt.d.s   $f2, $f2
/* 35E110 E0056710 46361082 */  mul.d     $f2, $f2, $f22
/* 35E114 E0056714 00000000 */  nop
/* 35E118 E0056718 C600002C */  lwc1      $f0, 0x2c($s0)
/* 35E11C E005671C 46000021 */  cvt.d.s   $f0, $f0
/* 35E120 E0056720 46360002 */  mul.d     $f0, $f0, $f22
/* 35E124 E0056724 00000000 */  nop
/* 35E128 E0056728 462010A0 */  cvt.s.d   $f2, $f2
/* 35E12C E005672C 46200020 */  cvt.s.d   $f0, $f0
/* 35E130 E0056730 E6020024 */  swc1      $f2, 0x24($s0)
/* 35E134 E0056734 E600002C */  swc1      $f0, 0x2c($s0)
.LE0056738:
/* 35E138 E0056738 26310014 */  addiu     $s1, $s1, 0x14
/* 35E13C E005673C C606FFF8 */  lwc1      $f6, -8($s0)
/* 35E140 E0056740 C6000024 */  lwc1      $f0, 0x24($s0)
/* 35E144 E0056744 C604FFFC */  lwc1      $f4, -4($s0)
/* 35E148 E0056748 46003180 */  add.s     $f6, $f6, $f0
/* 35E14C E005674C C6000028 */  lwc1      $f0, 0x28($s0)
/* 35E150 E0056750 C602002C */  lwc1      $f2, 0x2c($s0)
/* 35E154 E0056754 46002100 */  add.s     $f4, $f4, $f0
/* 35E158 E0056758 C6000000 */  lwc1      $f0, ($s0)
/* 35E15C E005675C 26520001 */  addiu     $s2, $s2, 1
/* 35E160 E0056760 46020000 */  add.s     $f0, $f0, $f2
/* 35E164 E0056764 E606FFF8 */  swc1      $f6, -8($s0)
/* 35E168 E0056768 E604FFFC */  swc1      $f4, -4($s0)
/* 35E16C E005676C E6000000 */  swc1      $f0, ($s0)
/* 35E170 E0056770 8E820008 */  lw        $v0, 8($s4)
/* 35E174 E0056774 0242102A */  slt       $v0, $s2, $v0
/* 35E178 E0056778 1440FF38 */  bnez      $v0, .LE005645C
/* 35E17C E005677C 2610003C */   addiu    $s0, $s0, 0x3c
/* 35E180 E0056780 08015AD6 */  j         .LE0056B58
/* 35E184 E0056784 00000000 */   nop
.LE0056788:
/* 35E188 E0056788 8E820008 */  lw        $v0, 8($s4)
/* 35E18C E005678C 24120001 */  addiu     $s2, $zero, 1
/* 35E190 E0056790 0242102A */  slt       $v0, $s2, $v0
/* 35E194 E0056794 104000F0 */  beqz      $v0, .LE0056B58
/* 35E198 E0056798 2490000C */   addiu    $s0, $a0, 0xc
/* 35E19C E005679C 24B10015 */  addiu     $s1, $a1, 0x15
/* 35E1A0 E00567A0 3C01BD4C */  lui       $at, 0xbd4c
/* 35E1A4 E00567A4 3421CCCD */  ori       $at, $at, 0xcccd
/* 35E1A8 E00567A8 4481E000 */  mtc1      $at, $f28
/* 35E1AC E00567AC 3C014120 */  lui       $at, 0x4120
/* 35E1B0 E00567B0 4481D000 */  mtc1      $at, $f26
/* 35E1B4 E00567B4 3C01E005 */  lui       $at, %hi(D_E0056F00)
/* 35E1B8 E00567B8 D4346F00 */  ldc1      $f20, %lo(D_E0056F00)($at)
/* 35E1BC E00567BC 4480C000 */  mtc1      $zero, $f24
/* 35E1C0 E00567C0 3C01E005 */  lui       $at, %hi(D_E0056F08)
/* 35E1C4 E00567C4 D4366F08 */  ldc1      $f22, %lo(D_E0056F08)($at)
.LE00567C8:
/* 35E1C8 E00567C8 C60C000C */  lwc1      $f12, 0xc($s0)
/* 35E1CC E00567CC 0C080140 */  jal       shim_sin_deg
/* 35E1D0 E00567D0 460C6300 */   add.s    $f12, $f12, $f12
/* 35E1D4 E00567D4 3C01E005 */  lui       $at, %hi(D_E0056F10)
/* 35E1D8 E00567D8 D4226F10 */  ldc1      $f2, %lo(D_E0056F10)($at)
/* 35E1DC E00567DC 46000021 */  cvt.d.s   $f0, $f0
/* 35E1E0 E00567E0 46220002 */  mul.d     $f0, $f0, $f2
/* 35E1E4 E00567E4 00000000 */  nop
/* 35E1E8 E00567E8 46200000 */  add.d     $f0, $f0, $f0
/* 35E1EC E00567EC C6020004 */  lwc1      $f2, 4($s0)
/* 35E1F0 E00567F0 46200020 */  cvt.s.d   $f0, $f0
/* 35E1F4 E00567F4 46001080 */  add.s     $f2, $f2, $f0
/* 35E1F8 E00567F8 3C01E005 */  lui       $at, %hi(D_E0056F18)
/* 35E1FC E00567FC D4206F18 */  ldc1      $f0, %lo(D_E0056F18)($at)
/* 35E200 E0056800 E6020004 */  swc1      $f2, 4($s0)
/* 35E204 E0056804 460010A1 */  cvt.d.s   $f2, $f2
/* 35E208 E0056808 46201082 */  mul.d     $f2, $f2, $f0
/* 35E20C E005680C 00000000 */  nop
/* 35E210 E0056810 C6000008 */  lwc1      $f0, 8($s0)
/* 35E214 E0056814 461C0000 */  add.s     $f0, $f0, $f28
/* 35E218 E0056818 E6000008 */  swc1      $f0, 8($s0)
/* 35E21C E005681C 461C0000 */  add.s     $f0, $f0, $f28
/* 35E220 E0056820 24040032 */  addiu     $a0, $zero, 0x32
/* 35E224 E0056824 0220282D */  daddu     $a1, $s1, $zero
/* 35E228 E0056828 E6000008 */  swc1      $f0, 8($s0)
/* 35E22C E005682C 462010A0 */  cvt.s.d   $f2, $f2
/* 35E230 E0056830 0C080011 */  jal       func_E0200044
/* 35E234 E0056834 E6020004 */   swc1     $f2, 4($s0)
/* 35E238 E0056838 2442FFE7 */  addiu     $v0, $v0, -0x19
/* 35E23C E005683C C60C0010 */  lwc1      $f12, 0x10($s0)
/* 35E240 E0056840 44820000 */  mtc1      $v0, $f0
/* 35E244 E0056844 00000000 */  nop
/* 35E248 E0056848 46800020 */  cvt.s.w   $f0, $f0
/* 35E24C E005684C 46006300 */  add.s     $f12, $f12, $f0
/* 35E250 E0056850 0C080140 */  jal       shim_sin_deg
/* 35E254 E0056854 E60C0010 */   swc1     $f12, 0x10($s0)
/* 35E258 E0056858 C60C0010 */  lwc1      $f12, 0x10($s0)
/* 35E25C E005685C 3C013FE0 */  lui       $at, 0x3fe0
/* 35E260 E0056860 44811800 */  mtc1      $at, $f3
/* 35E264 E0056864 44801000 */  mtc1      $zero, $f2
/* 35E268 E0056868 46006321 */  cvt.d.s   $f12, $f12
/* 35E26C E005686C 46226302 */  mul.d     $f12, $f12, $f2
/* 35E270 E0056870 00000000 */  nop
/* 35E274 E0056874 461A0002 */  mul.s     $f0, $f0, $f26
/* 35E278 E0056878 00000000 */  nop
/* 35E27C E005687C C602000C */  lwc1      $f2, 0xc($s0)
/* 35E280 E0056880 46001080 */  add.s     $f2, $f2, $f0
/* 35E284 E0056884 E602000C */  swc1      $f2, 0xc($s0)
/* 35E288 E0056888 0C080144 */  jal       shim_cos_deg
/* 35E28C E005688C 46206320 */   cvt.s.d  $f12, $f12
/* 35E290 E0056890 461A0002 */  mul.s     $f0, $f0, $f26
/* 35E294 E0056894 00000000 */  nop
/* 35E298 E0056898 C606FFF8 */  lwc1      $f6, -8($s0)
/* 35E29C E005689C C6020004 */  lwc1      $f2, 4($s0)
/* 35E2A0 E00568A0 C604FFFC */  lwc1      $f4, -4($s0)
/* 35E2A4 E00568A4 46023180 */  add.s     $f6, $f6, $f2
/* 35E2A8 E00568A8 C6020008 */  lwc1      $f2, 8($s0)
/* 35E2AC E00568AC 46022100 */  add.s     $f4, $f4, $f2
/* 35E2B0 E00568B0 C6020014 */  lwc1      $f2, 0x14($s0)
/* 35E2B4 E00568B4 3C0141F0 */  lui       $at, 0x41f0
/* 35E2B8 E00568B8 44814000 */  mtc1      $at, $f8
/* 35E2BC E00568BC 46001080 */  add.s     $f2, $f2, $f0
/* 35E2C0 E00568C0 E606FFF8 */  swc1      $f6, -8($s0)
/* 35E2C4 E00568C4 E604FFFC */  swc1      $f4, -4($s0)
/* 35E2C8 E00568C8 4608203C */  c.lt.s    $f4, $f8
/* 35E2CC E00568CC 00000000 */  nop
/* 35E2D0 E00568D0 45000032 */  bc1f      .LE005699C
/* 35E2D4 E00568D4 E6020014 */   swc1     $f2, 0x14($s0)
/* 35E2D8 E00568D8 3C01C348 */  lui       $at, 0xc348
/* 35E2DC E00568DC 44810000 */  mtc1      $at, $f0
/* 35E2E0 E00568E0 46003086 */  mov.s     $f2, $f6
/* 35E2E4 E00568E4 4602003C */  c.lt.s    $f0, $f2
/* 35E2E8 E00568E8 00000000 */  nop
/* 35E2EC E00568EC 45000005 */  bc1f      .LE0056904
/* 35E2F0 E00568F0 00000000 */   nop
/* 35E2F4 E00568F4 C6000024 */  lwc1      $f0, 0x24($s0)
/* 35E2F8 E00568F8 46000021 */  cvt.d.s   $f0, $f0
/* 35E2FC E00568FC 08015A44 */  j         .LE0056910
/* 35E300 E0056900 46340001 */   sub.d    $f0, $f0, $f20
.LE0056904:
/* 35E304 E0056904 C6000024 */  lwc1      $f0, 0x24($s0)
/* 35E308 E0056908 46000021 */  cvt.d.s   $f0, $f0
/* 35E30C E005690C 46340000 */  add.d     $f0, $f0, $f20
.LE0056910:
/* 35E310 E0056910 46200020 */  cvt.s.d   $f0, $f0
/* 35E314 E0056914 E6000024 */  swc1      $f0, 0x24($s0)
/* 35E318 E0056918 C6000000 */  lwc1      $f0, ($s0)
/* 35E31C E005691C 4600C03C */  c.lt.s    $f24, $f0
/* 35E320 E0056920 00000000 */  nop
/* 35E324 E0056924 45000005 */  bc1f      .LE005693C
/* 35E328 E0056928 00000000 */   nop
/* 35E32C E005692C C600002C */  lwc1      $f0, 0x2c($s0)
/* 35E330 E0056930 46000021 */  cvt.d.s   $f0, $f0
/* 35E334 E0056934 08015A52 */  j         .LE0056948
/* 35E338 E0056938 46340001 */   sub.d    $f0, $f0, $f20
.LE005693C:
/* 35E33C E005693C C600002C */  lwc1      $f0, 0x2c($s0)
/* 35E340 E0056940 46000021 */  cvt.d.s   $f0, $f0
/* 35E344 E0056944 46340000 */  add.d     $f0, $f0, $f20
.LE0056948:
/* 35E348 E0056948 46200020 */  cvt.s.d   $f0, $f0
/* 35E34C E005694C E600002C */  swc1      $f0, 0x2c($s0)
/* 35E350 E0056950 C6040024 */  lwc1      $f4, 0x24($s0)
/* 35E354 E0056954 46002121 */  cvt.d.s   $f4, $f4
/* 35E358 E0056958 46362102 */  mul.d     $f4, $f4, $f22
/* 35E35C E005695C 00000000 */  nop
/* 35E360 E0056960 C602002C */  lwc1      $f2, 0x2c($s0)
/* 35E364 E0056964 460010A1 */  cvt.d.s   $f2, $f2
/* 35E368 E0056968 46361082 */  mul.d     $f2, $f2, $f22
/* 35E36C E005696C 00000000 */  nop
/* 35E370 E0056970 C6000008 */  lwc1      $f0, 8($s0)
/* 35E374 E0056974 46000021 */  cvt.d.s   $f0, $f0
/* 35E378 E0056978 46360002 */  mul.d     $f0, $f0, $f22
/* 35E37C E005697C 00000000 */  nop
/* 35E380 E0056980 46202120 */  cvt.s.d   $f4, $f4
/* 35E384 E0056984 462010A0 */  cvt.s.d   $f2, $f2
/* 35E388 E0056988 46200020 */  cvt.s.d   $f0, $f0
/* 35E38C E005698C E6040024 */  swc1      $f4, 0x24($s0)
/* 35E390 E0056990 E602002C */  swc1      $f2, 0x2c($s0)
/* 35E394 E0056994 08015A8F */  j         .LE0056A3C
/* 35E398 E0056998 E6000008 */   swc1     $f0, 8($s0)
.LE005699C:
/* 35E39C E005699C C600FFF8 */  lwc1      $f0, -8($s0)
/* 35E3A0 E00569A0 4600C03C */  c.lt.s    $f24, $f0
/* 35E3A4 E00569A4 00000000 */  nop
/* 35E3A8 E00569A8 45000005 */  bc1f      .LE00569C0
/* 35E3AC E00569AC 00000000 */   nop
/* 35E3B0 E00569B0 C6000024 */  lwc1      $f0, 0x24($s0)
/* 35E3B4 E00569B4 46000021 */  cvt.d.s   $f0, $f0
/* 35E3B8 E00569B8 08015A73 */  j         .LE00569CC
/* 35E3BC E00569BC 46340001 */   sub.d    $f0, $f0, $f20
.LE00569C0:
/* 35E3C0 E00569C0 C6000024 */  lwc1      $f0, 0x24($s0)
/* 35E3C4 E00569C4 46000021 */  cvt.d.s   $f0, $f0
/* 35E3C8 E00569C8 46340000 */  add.d     $f0, $f0, $f20
.LE00569CC:
/* 35E3CC E00569CC 46200020 */  cvt.s.d   $f0, $f0
/* 35E3D0 E00569D0 E6000024 */  swc1      $f0, 0x24($s0)
/* 35E3D4 E00569D4 C6000000 */  lwc1      $f0, ($s0)
/* 35E3D8 E00569D8 4600C03C */  c.lt.s    $f24, $f0
/* 35E3DC E00569DC 00000000 */  nop
/* 35E3E0 E00569E0 45000005 */  bc1f      .LE00569F8
/* 35E3E4 E00569E4 00000000 */   nop
/* 35E3E8 E00569E8 C600002C */  lwc1      $f0, 0x2c($s0)
/* 35E3EC E00569EC 46000021 */  cvt.d.s   $f0, $f0
/* 35E3F0 E00569F0 08015A81 */  j         .LE0056A04
/* 35E3F4 E00569F4 46340001 */   sub.d    $f0, $f0, $f20
.LE00569F8:
/* 35E3F8 E00569F8 C600002C */  lwc1      $f0, 0x2c($s0)
/* 35E3FC E00569FC 46000021 */  cvt.d.s   $f0, $f0
/* 35E400 E0056A00 46340000 */  add.d     $f0, $f0, $f20
.LE0056A04:
/* 35E404 E0056A04 46200020 */  cvt.s.d   $f0, $f0
/* 35E408 E0056A08 E600002C */  swc1      $f0, 0x2c($s0)
/* 35E40C E0056A0C C6020024 */  lwc1      $f2, 0x24($s0)
/* 35E410 E0056A10 460010A1 */  cvt.d.s   $f2, $f2
/* 35E414 E0056A14 46361082 */  mul.d     $f2, $f2, $f22
/* 35E418 E0056A18 00000000 */  nop
/* 35E41C E0056A1C C600002C */  lwc1      $f0, 0x2c($s0)
/* 35E420 E0056A20 46000021 */  cvt.d.s   $f0, $f0
/* 35E424 E0056A24 46360002 */  mul.d     $f0, $f0, $f22
/* 35E428 E0056A28 00000000 */  nop
/* 35E42C E0056A2C 462010A0 */  cvt.s.d   $f2, $f2
/* 35E430 E0056A30 46200020 */  cvt.s.d   $f0, $f0
/* 35E434 E0056A34 E6020024 */  swc1      $f2, 0x24($s0)
/* 35E438 E0056A38 E600002C */  swc1      $f0, 0x2c($s0)
.LE0056A3C:
/* 35E43C E0056A3C 26310014 */  addiu     $s1, $s1, 0x14
/* 35E440 E0056A40 C606FFF8 */  lwc1      $f6, -8($s0)
/* 35E444 E0056A44 C6000024 */  lwc1      $f0, 0x24($s0)
/* 35E448 E0056A48 C604FFFC */  lwc1      $f4, -4($s0)
/* 35E44C E0056A4C 46003180 */  add.s     $f6, $f6, $f0
/* 35E450 E0056A50 C6000028 */  lwc1      $f0, 0x28($s0)
/* 35E454 E0056A54 C602002C */  lwc1      $f2, 0x2c($s0)
/* 35E458 E0056A58 46002100 */  add.s     $f4, $f4, $f0
/* 35E45C E0056A5C C6000000 */  lwc1      $f0, ($s0)
/* 35E460 E0056A60 26520001 */  addiu     $s2, $s2, 1
/* 35E464 E0056A64 46020000 */  add.s     $f0, $f0, $f2
/* 35E468 E0056A68 E606FFF8 */  swc1      $f6, -8($s0)
/* 35E46C E0056A6C E604FFFC */  swc1      $f4, -4($s0)
/* 35E470 E0056A70 E6000000 */  swc1      $f0, ($s0)
/* 35E474 E0056A74 8E820008 */  lw        $v0, 8($s4)
/* 35E478 E0056A78 0242102A */  slt       $v0, $s2, $v0
/* 35E47C E0056A7C 1440FF52 */  bnez      $v0, .LE00567C8
/* 35E480 E0056A80 2610003C */   addiu    $s0, $s0, 0x3c
/* 35E484 E0056A84 08015AD6 */  j         .LE0056B58
/* 35E488 E0056A88 00000000 */   nop
.LE0056A8C:
/* 35E48C E0056A8C 8E820008 */  lw        $v0, 8($s4)
/* 35E490 E0056A90 0242102A */  slt       $v0, $s2, $v0
/* 35E494 E0056A94 10400030 */  beqz      $v0, .LE0056B58
/* 35E498 E0056A98 24900008 */   addiu    $s0, $a0, 8
/* 35E49C E0056A9C 24B10015 */  addiu     $s1, $a1, 0x15
/* 35E4A0 E0056AA0 3C014120 */  lui       $at, 0x4120
/* 35E4A4 E0056AA4 4481A000 */  mtc1      $at, $f20
/* 35E4A8 E0056AA8 3C013FE0 */  lui       $at, 0x3fe0
/* 35E4AC E0056AAC 4481B800 */  mtc1      $at, $f23
/* 35E4B0 E0056AB0 4480B000 */  mtc1      $zero, $f22
.LE0056AB4:
/* 35E4B4 E0056AB4 24040032 */  addiu     $a0, $zero, 0x32
/* 35E4B8 E0056AB8 0C080011 */  jal       func_E0200044
/* 35E4BC E0056ABC 0220282D */   daddu    $a1, $s1, $zero
/* 35E4C0 E0056AC0 2442FFE7 */  addiu     $v0, $v0, -0x19
/* 35E4C4 E0056AC4 C60C0014 */  lwc1      $f12, 0x14($s0)
/* 35E4C8 E0056AC8 44820000 */  mtc1      $v0, $f0
/* 35E4CC E0056ACC 00000000 */  nop
/* 35E4D0 E0056AD0 46800020 */  cvt.s.w   $f0, $f0
/* 35E4D4 E0056AD4 46006300 */  add.s     $f12, $f12, $f0
/* 35E4D8 E0056AD8 0C080140 */  jal       shim_sin_deg
/* 35E4DC E0056ADC E60C0014 */   swc1     $f12, 0x14($s0)
/* 35E4E0 E0056AE0 C60C0014 */  lwc1      $f12, 0x14($s0)
/* 35E4E4 E0056AE4 46006321 */  cvt.d.s   $f12, $f12
/* 35E4E8 E0056AE8 46366302 */  mul.d     $f12, $f12, $f22
/* 35E4EC E0056AEC 00000000 */  nop
/* 35E4F0 E0056AF0 46140002 */  mul.s     $f0, $f0, $f20
/* 35E4F4 E0056AF4 00000000 */  nop
/* 35E4F8 E0056AF8 C6020010 */  lwc1      $f2, 0x10($s0)
/* 35E4FC E0056AFC 46001080 */  add.s     $f2, $f2, $f0
/* 35E500 E0056B00 E6020010 */  swc1      $f2, 0x10($s0)
/* 35E504 E0056B04 0C080144 */  jal       shim_cos_deg
/* 35E508 E0056B08 46206320 */   cvt.s.d  $f12, $f12
/* 35E50C E0056B0C 46140002 */  mul.s     $f0, $f0, $f20
/* 35E510 E0056B10 00000000 */  nop
/* 35E514 E0056B14 C606FFFC */  lwc1      $f6, -4($s0)
/* 35E518 E0056B18 C6020008 */  lwc1      $f2, 8($s0)
/* 35E51C E0056B1C C6040000 */  lwc1      $f4, ($s0)
/* 35E520 E0056B20 46023180 */  add.s     $f6, $f6, $f2
/* 35E524 E0056B24 C602000C */  lwc1      $f2, 0xc($s0)
/* 35E528 E0056B28 26310014 */  addiu     $s1, $s1, 0x14
/* 35E52C E0056B2C 46022100 */  add.s     $f4, $f4, $f2
/* 35E530 E0056B30 C6020018 */  lwc1      $f2, 0x18($s0)
/* 35E534 E0056B34 26520001 */  addiu     $s2, $s2, 1
/* 35E538 E0056B38 46001080 */  add.s     $f2, $f2, $f0
/* 35E53C E0056B3C E606FFFC */  swc1      $f6, -4($s0)
/* 35E540 E0056B40 E6040000 */  swc1      $f4, ($s0)
/* 35E544 E0056B44 E6020018 */  swc1      $f2, 0x18($s0)
/* 35E548 E0056B48 8E820008 */  lw        $v0, 8($s4)
/* 35E54C E0056B4C 0242102A */  slt       $v0, $s2, $v0
/* 35E550 E0056B50 1440FFD8 */  bnez      $v0, .LE0056AB4
/* 35E554 E0056B54 2610003C */   addiu    $s0, $s0, 0x3c
.LE0056B58:
/* 35E558 E0056B58 8FBF0024 */  lw        $ra, 0x24($sp)
/* 35E55C E0056B5C 8FB40020 */  lw        $s4, 0x20($sp)
/* 35E560 E0056B60 8FB3001C */  lw        $s3, 0x1c($sp)
/* 35E564 E0056B64 8FB20018 */  lw        $s2, 0x18($sp)
/* 35E568 E0056B68 8FB10014 */  lw        $s1, 0x14($sp)
/* 35E56C E0056B6C 8FB00010 */  lw        $s0, 0x10($sp)
/* 35E570 E0056B70 D7BC0048 */  ldc1      $f28, 0x48($sp)
/* 35E574 E0056B74 D7BA0040 */  ldc1      $f26, 0x40($sp)
/* 35E578 E0056B78 D7B80038 */  ldc1      $f24, 0x38($sp)
/* 35E57C E0056B7C D7B60030 */  ldc1      $f22, 0x30($sp)
/* 35E580 E0056B80 D7B40028 */  ldc1      $f20, 0x28($sp)
/* 35E584 E0056B84 03E00008 */  jr        $ra
/* 35E588 E0056B88 27BD0050 */   addiu    $sp, $sp, 0x50
