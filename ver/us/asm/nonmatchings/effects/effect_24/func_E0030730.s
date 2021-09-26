.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_E0030730
/* 342870 E0030730 27BDFFB0 */  addiu     $sp, $sp, -0x50
/* 342874 E0030734 AFB40020 */  sw        $s4, 0x20($sp)
/* 342878 E0030738 0080A02D */  daddu     $s4, $a0, $zero
/* 34287C E003073C AFBF002C */  sw        $ra, 0x2c($sp)
/* 342880 E0030740 AFB60028 */  sw        $s6, 0x28($sp)
/* 342884 E0030744 AFB50024 */  sw        $s5, 0x24($sp)
/* 342888 E0030748 AFB3001C */  sw        $s3, 0x1c($sp)
/* 34288C E003074C AFB20018 */  sw        $s2, 0x18($sp)
/* 342890 E0030750 AFB10014 */  sw        $s1, 0x14($sp)
/* 342894 E0030754 AFB00010 */  sw        $s0, 0x10($sp)
/* 342898 E0030758 F7BA0048 */  sdc1      $f26, 0x48($sp)
/* 34289C E003075C F7B80040 */  sdc1      $f24, 0x40($sp)
/* 3428A0 E0030760 F7B60038 */  sdc1      $f22, 0x38($sp)
/* 3428A4 E0030764 F7B40030 */  sdc1      $f20, 0x30($sp)
/* 3428A8 E0030768 8E91000C */  lw        $s1, 0xc($s4)
/* 3428AC E003076C 8E220028 */  lw        $v0, 0x28($s1)
/* 3428B0 E0030770 2442FFFF */  addiu     $v0, $v0, -1
/* 3428B4 E0030774 AE220028 */  sw        $v0, 0x28($s1)
/* 3428B8 E0030778 8E22002C */  lw        $v0, 0x2c($s1)
/* 3428BC E003077C 8E240028 */  lw        $a0, 0x28($s1)
/* 3428C0 E0030780 24430001 */  addiu     $v1, $v0, 1
/* 3428C4 E0030784 04810005 */  bgez      $a0, .LE003079C
/* 3428C8 E0030788 AE23002C */   sw       $v1, 0x2c($s1)
/* 3428CC E003078C 0C080128 */  jal       shim_remove_effect
/* 3428D0 E0030790 0280202D */   daddu    $a0, $s4, $zero
/* 3428D4 E0030794 0800C27B */  j         .LE00309EC
/* 3428D8 E0030798 00000000 */   nop
.LE003079C:
/* 3428DC E003079C 0000902D */  daddu     $s2, $zero, $zero
/* 3428E0 E00307A0 8E820008 */  lw        $v0, 8($s4)
/* 3428E4 E00307A4 18400091 */  blez      $v0, .LE00309EC
/* 3428E8 E00307A8 0080982D */   daddu    $s3, $a0, $zero
/* 3428EC E00307AC 00031040 */  sll       $v0, $v1, 1
/* 3428F0 E00307B0 00431021 */  addu      $v0, $v0, $v1
/* 3428F4 E00307B4 0002B040 */  sll       $s6, $v0, 1
/* 3428F8 E00307B8 2662FFFA */  addiu     $v0, $s3, -6
/* 3428FC E00307BC 2C55000E */  sltiu     $s5, $v0, 0xe
/* 342900 E00307C0 2630001C */  addiu     $s0, $s1, 0x1c
/* 342904 E00307C4 3C01E003 */  lui       $at, %hi(D_E0030ED8)
/* 342908 E00307C8 D43A0ED8 */  ldc1      $f26, %lo(D_E0030ED8)($at)
/* 34290C E00307CC 3C01E003 */  lui       $at, %hi(D_E0030EE0)
/* 342910 E00307D0 D4340EE0 */  ldc1      $f20, %lo(D_E0030EE0)($at)
/* 342914 E00307D4 3C01E003 */  lui       $at, %hi(D_E0030EE8)
/* 342918 E00307D8 D4380EE8 */  ldc1      $f24, %lo(D_E0030EE8)($at)
/* 34291C E00307DC 3C01E003 */  lui       $at, %hi(D_E0030EF0)
/* 342920 E00307E0 D4360EF0 */  ldc1      $f22, %lo(D_E0030EF0)($at)
.LE00307E4:
/* 342924 E00307E4 8E230000 */  lw        $v1, ($s1)
/* 342928 E00307E8 24020002 */  addiu     $v0, $zero, 2
/* 34292C E00307EC 14620029 */  bne       $v1, $v0, .LE0030894
/* 342930 E00307F0 2A620006 */   slti     $v0, $s3, 6
/* 342934 E00307F4 44966000 */  mtc1      $s6, $f12
/* 342938 E00307F8 00000000 */  nop
/* 34293C E00307FC 0C080144 */  jal       shim_cos_deg
/* 342940 E0030800 46806320 */   cvt.s.w  $f12, $f12
/* 342944 E0030804 C604FFF4 */  lwc1      $f4, -0xc($s0)
/* 342948 E0030808 46002121 */  cvt.d.s   $f4, $f4
/* 34294C E003080C 463A2102 */  mul.d     $f4, $f4, $f26
/* 342950 E0030810 00000000 */  nop
/* 342954 E0030814 3C014080 */  lui       $at, 0x4080
/* 342958 E0030818 44811000 */  mtc1      $at, $f2
/* 34295C E003081C 00000000 */  nop
/* 342960 E0030820 46020002 */  mul.s     $f0, $f0, $f2
/* 342964 E0030824 00000000 */  nop
/* 342968 E0030828 C602FFFC */  lwc1      $f2, -4($s0)
/* 34296C E003082C 460010A1 */  cvt.d.s   $f2, $f2
/* 342970 E0030830 463A1082 */  mul.d     $f2, $f2, $f26
/* 342974 E0030834 00000000 */  nop
/* 342978 E0030838 E600FFF8 */  swc1      $f0, -8($s0)
/* 34297C E003083C 46202120 */  cvt.s.d   $f4, $f4
/* 342980 E0030840 E604FFF4 */  swc1      $f4, -0xc($s0)
/* 342984 E0030844 46000106 */  mov.s     $f4, $f0
/* 342988 E0030848 44800000 */  mtc1      $zero, $f0
/* 34298C E003084C 462010A0 */  cvt.s.d   $f2, $f2
/* 342990 E0030850 4600203C */  c.lt.s    $f4, $f0
/* 342994 E0030854 00000000 */  nop
/* 342998 E0030858 4500004E */  bc1f      .LE0030994
/* 34299C E003085C E602FFFC */   swc1     $f2, -4($s0)
/* 3429A0 E0030860 C6020008 */  lwc1      $f2, 8($s0)
/* 3429A4 E0030864 468010A1 */  cvt.d.w   $f2, $f2
/* 3429A8 E0030868 46381082 */  mul.d     $f2, $f2, $f24
/* 3429AC E003086C 00000000 */  nop
/* 3429B0 E0030870 C6000004 */  lwc1      $f0, 4($s0)
/* 3429B4 E0030874 46000021 */  cvt.d.s   $f0, $f0
/* 3429B8 E0030878 46340002 */  mul.d     $f0, $f0, $f20
/* 3429BC E003087C 00000000 */  nop
/* 3429C0 E0030880 4620128D */  trunc.w.d $f10, $f2
/* 3429C4 E0030884 E60A0008 */  swc1      $f10, 8($s0)
/* 3429C8 E0030888 46200020 */  cvt.s.d   $f0, $f0
/* 3429CC E003088C 0800C265 */  j         .LE0030994
/* 3429D0 E0030890 E6000004 */   swc1     $f0, 4($s0)
.LE0030894:
/* 3429D4 E0030894 14400013 */  bnez      $v0, .LE00308E4
/* 3429D8 E0030898 00000000 */   nop
/* 3429DC E003089C C604FFF4 */  lwc1      $f4, -0xc($s0)
/* 3429E0 E00308A0 46002121 */  cvt.d.s   $f4, $f4
/* 3429E4 E00308A4 46342102 */  mul.d     $f4, $f4, $f20
/* 3429E8 E00308A8 00000000 */  nop
/* 3429EC E00308AC C602FFF8 */  lwc1      $f2, -8($s0)
/* 3429F0 E00308B0 460010A1 */  cvt.d.s   $f2, $f2
/* 3429F4 E00308B4 46341082 */  mul.d     $f2, $f2, $f20
/* 3429F8 E00308B8 00000000 */  nop
/* 3429FC E00308BC C600FFFC */  lwc1      $f0, -4($s0)
/* 342A00 E00308C0 46000021 */  cvt.d.s   $f0, $f0
/* 342A04 E00308C4 46340002 */  mul.d     $f0, $f0, $f20
/* 342A08 E00308C8 00000000 */  nop
/* 342A0C E00308CC 46202120 */  cvt.s.d   $f4, $f4
/* 342A10 E00308D0 462010A0 */  cvt.s.d   $f2, $f2
/* 342A14 E00308D4 46200020 */  cvt.s.d   $f0, $f0
/* 342A18 E00308D8 E604FFF4 */  swc1      $f4, -0xc($s0)
/* 342A1C E00308DC E602FFF8 */  swc1      $f2, -8($s0)
/* 342A20 E00308E0 E600FFFC */  swc1      $f0, -4($s0)
.LE00308E4:
/* 342A24 E00308E4 12A0000B */  beqz      $s5, .LE0030914
/* 342A28 E00308E8 2A620005 */   slti     $v0, $s3, 5
/* 342A2C E00308EC 8E220000 */  lw        $v0, ($s1)
/* 342A30 E00308F0 54400029 */  bnel      $v0, $zero, .LE0030998
/* 342A34 E00308F4 26520001 */   addiu    $s2, $s2, 1
/* 342A38 E00308F8 C6000004 */  lwc1      $f0, 4($s0)
/* 342A3C E00308FC 3C013F80 */  lui       $at, 0x3f80
/* 342A40 E0030900 44811000 */  mtc1      $at, $f2
/* 342A44 E0030904 00000000 */  nop
/* 342A48 E0030908 46020000 */  add.s     $f0, $f0, $f2
/* 342A4C E003090C 0800C265 */  j         .LE0030994
/* 342A50 E0030910 E6000004 */   swc1     $f0, 4($s0)
.LE0030914:
/* 342A54 E0030914 50400020 */  beql      $v0, $zero, .LE0030998
/* 342A58 E0030918 26520001 */   addiu    $s2, $s2, 1
/* 342A5C E003091C C6080008 */  lwc1      $f8, 8($s0)
/* 342A60 E0030920 46804221 */  cvt.d.w   $f8, $f8
/* 342A64 E0030924 46384202 */  mul.d     $f8, $f8, $f24
/* 342A68 E0030928 00000000 */  nop
/* 342A6C E003092C C6060004 */  lwc1      $f6, 4($s0)
/* 342A70 E0030930 460031A1 */  cvt.d.s   $f6, $f6
/* 342A74 E0030934 46343182 */  mul.d     $f6, $f6, $f20
/* 342A78 E0030938 00000000 */  nop
/* 342A7C E003093C C604FFF4 */  lwc1      $f4, -0xc($s0)
/* 342A80 E0030940 46002121 */  cvt.d.s   $f4, $f4
/* 342A84 E0030944 46362102 */  mul.d     $f4, $f4, $f22
/* 342A88 E0030948 00000000 */  nop
/* 342A8C E003094C C602FFF8 */  lwc1      $f2, -8($s0)
/* 342A90 E0030950 460010A1 */  cvt.d.s   $f2, $f2
/* 342A94 E0030954 46361082 */  mul.d     $f2, $f2, $f22
/* 342A98 E0030958 00000000 */  nop
/* 342A9C E003095C C600FFFC */  lwc1      $f0, -4($s0)
/* 342AA0 E0030960 46000021 */  cvt.d.s   $f0, $f0
/* 342AA4 E0030964 46360002 */  mul.d     $f0, $f0, $f22
/* 342AA8 E0030968 00000000 */  nop
/* 342AAC E003096C 4620428D */  trunc.w.d $f10, $f8
/* 342AB0 E0030970 E60A0008 */  swc1      $f10, 8($s0)
/* 342AB4 E0030974 462031A0 */  cvt.s.d   $f6, $f6
/* 342AB8 E0030978 46202120 */  cvt.s.d   $f4, $f4
/* 342ABC E003097C 462010A0 */  cvt.s.d   $f2, $f2
/* 342AC0 E0030980 46200020 */  cvt.s.d   $f0, $f0
/* 342AC4 E0030984 E6060004 */  swc1      $f6, 4($s0)
/* 342AC8 E0030988 E604FFF4 */  swc1      $f4, -0xc($s0)
/* 342ACC E003098C E602FFF8 */  swc1      $f2, -8($s0)
/* 342AD0 E0030990 E600FFFC */  swc1      $f0, -4($s0)
.LE0030994:
/* 342AD4 E0030994 26520001 */  addiu     $s2, $s2, 1
.LE0030998:
/* 342AD8 E0030998 C608FFE8 */  lwc1      $f8, -0x18($s0)
/* 342ADC E003099C C600FFF4 */  lwc1      $f0, -0xc($s0)
/* 342AE0 E00309A0 C606FFEC */  lwc1      $f6, -0x14($s0)
/* 342AE4 E00309A4 46004200 */  add.s     $f8, $f8, $f0
/* 342AE8 E00309A8 C600FFF8 */  lwc1      $f0, -8($s0)
/* 342AEC E00309AC C604FFF0 */  lwc1      $f4, -0x10($s0)
/* 342AF0 E00309B0 46003180 */  add.s     $f6, $f6, $f0
/* 342AF4 E00309B4 C600FFFC */  lwc1      $f0, -4($s0)
/* 342AF8 E00309B8 C6020004 */  lwc1      $f2, 4($s0)
/* 342AFC E00309BC 46002100 */  add.s     $f4, $f4, $f0
/* 342B00 E00309C0 C6000000 */  lwc1      $f0, ($s0)
/* 342B04 E00309C4 26310030 */  addiu     $s1, $s1, 0x30
/* 342B08 E00309C8 E608FFE8 */  swc1      $f8, -0x18($s0)
/* 342B0C E00309CC 46020000 */  add.s     $f0, $f0, $f2
/* 342B10 E00309D0 E606FFEC */  swc1      $f6, -0x14($s0)
/* 342B14 E00309D4 E604FFF0 */  swc1      $f4, -0x10($s0)
/* 342B18 E00309D8 E6000000 */  swc1      $f0, ($s0)
/* 342B1C E00309DC 8E820008 */  lw        $v0, 8($s4)
/* 342B20 E00309E0 0242102A */  slt       $v0, $s2, $v0
/* 342B24 E00309E4 1440FF7F */  bnez      $v0, .LE00307E4
/* 342B28 E00309E8 26100030 */   addiu    $s0, $s0, 0x30
.LE00309EC:
/* 342B2C E00309EC 8FBF002C */  lw        $ra, 0x2c($sp)
/* 342B30 E00309F0 8FB60028 */  lw        $s6, 0x28($sp)
/* 342B34 E00309F4 8FB50024 */  lw        $s5, 0x24($sp)
/* 342B38 E00309F8 8FB40020 */  lw        $s4, 0x20($sp)
/* 342B3C E00309FC 8FB3001C */  lw        $s3, 0x1c($sp)
/* 342B40 E0030A00 8FB20018 */  lw        $s2, 0x18($sp)
/* 342B44 E0030A04 8FB10014 */  lw        $s1, 0x14($sp)
/* 342B48 E0030A08 8FB00010 */  lw        $s0, 0x10($sp)
/* 342B4C E0030A0C D7BA0048 */  ldc1      $f26, 0x48($sp)
/* 342B50 E0030A10 D7B80040 */  ldc1      $f24, 0x40($sp)
/* 342B54 E0030A14 D7B60038 */  ldc1      $f22, 0x38($sp)
/* 342B58 E0030A18 D7B40030 */  ldc1      $f20, 0x30($sp)
/* 342B5C E0030A1C 03E00008 */  jr        $ra
/* 342B60 E0030A20 27BD0050 */   addiu    $sp, $sp, 0x50
