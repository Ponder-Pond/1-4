.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel fx_66_main
/* 388A54 E0084084 27BDFF48 */  addiu     $sp, $sp, -0xb8
/* 388A58 E0084088 AFB5007C */  sw        $s5, 0x7c($sp)
/* 388A5C E008408C 0080A82D */  daddu     $s5, $a0, $zero
/* 388A60 E0084090 30A4FFFF */  andi      $a0, $a1, 0xffff
/* 388A64 E0084094 27A20044 */  addiu     $v0, $sp, 0x44
/* 388A68 E0084098 AFA20010 */  sw        $v0, 0x10($sp)
/* 388A6C E008409C 27A20048 */  addiu     $v0, $sp, 0x48
/* 388A70 E00840A0 AFA20014 */  sw        $v0, 0x14($sp)
/* 388A74 E00840A4 27A2004C */  addiu     $v0, $sp, 0x4c
/* 388A78 E00840A8 AFB60080 */  sw        $s6, 0x80($sp)
/* 388A7C E00840AC 00C0B02D */  daddu     $s6, $a2, $zero
/* 388A80 E00840B0 27A50038 */  addiu     $a1, $sp, 0x38
/* 388A84 E00840B4 27A6003C */  addiu     $a2, $sp, 0x3c
/* 388A88 E00840B8 F7B60090 */  sdc1      $f22, 0x90($sp)
/* 388A8C E00840BC 4487B000 */  mtc1      $a3, $f22
/* 388A90 E00840C0 27A70040 */  addiu     $a3, $sp, 0x40
/* 388A94 E00840C4 AFBF0084 */  sw        $ra, 0x84($sp)
/* 388A98 E00840C8 AFB40078 */  sw        $s4, 0x78($sp)
/* 388A9C E00840CC AFB30074 */  sw        $s3, 0x74($sp)
/* 388AA0 E00840D0 AFB20070 */  sw        $s2, 0x70($sp)
/* 388AA4 E00840D4 AFB1006C */  sw        $s1, 0x6c($sp)
/* 388AA8 E00840D8 AFB00068 */  sw        $s0, 0x68($sp)
/* 388AAC E00840DC F7BE00B0 */  sdc1      $f30, 0xb0($sp)
/* 388AB0 E00840E0 F7BC00A8 */  sdc1      $f28, 0xa8($sp)
/* 388AB4 E00840E4 F7BA00A0 */  sdc1      $f26, 0xa0($sp)
/* 388AB8 E00840E8 F7B80098 */  sdc1      $f24, 0x98($sp)
/* 388ABC E00840EC F7B40088 */  sdc1      $f20, 0x88($sp)
/* 388AC0 E00840F0 0C021000 */  jal       func_E0084000
/* 388AC4 E00840F4 AFA20018 */   sw       $v0, 0x18($sp)
/* 388AC8 E00840F8 C7A80044 */  lwc1      $f8, 0x44($sp)
/* 388ACC E00840FC 3C013D80 */  lui       $at, 0x3d80
/* 388AD0 E0084100 44810000 */  mtc1      $at, $f0
/* 388AD4 E0084104 00000000 */  nop
/* 388AD8 E0084108 46004182 */  mul.s     $f6, $f8, $f0
/* 388ADC E008410C 00000000 */  nop
/* 388AE0 E0084110 C7AA0048 */  lwc1      $f10, 0x48($sp)
/* 388AE4 E0084114 46005102 */  mul.s     $f4, $f10, $f0
/* 388AE8 E0084118 00000000 */  nop
/* 388AEC E008411C C7AC004C */  lwc1      $f12, 0x4c($sp)
/* 388AF0 E0084120 46006002 */  mul.s     $f0, $f12, $f0
/* 388AF4 E0084124 00000000 */  nop
/* 388AF8 E0084128 3C013F80 */  lui       $at, 0x3f80
/* 388AFC E008412C 44811000 */  mtc1      $at, $f2
/* 388B00 E0084130 00000000 */  nop
/* 388B04 E0084134 46023180 */  add.s     $f6, $f6, $f2
/* 388B08 E0084138 27B00020 */  addiu     $s0, $sp, 0x20
/* 388B0C E008413C 46022100 */  add.s     $f4, $f4, $f2
/* 388B10 E0084140 4600470D */  trunc.w.s $f28, $f8
/* 388B14 E0084144 4403E000 */  mfc1      $v1, $f28
/* 388B18 E0084148 46020000 */  add.s     $f0, $f0, $f2
/* 388B1C E008414C 4600370D */  trunc.w.s $f28, $f6
/* 388B20 E0084150 4412E000 */  mfc1      $s2, $f28
/* 388B24 E0084154 4600270D */  trunc.w.s $f28, $f4
/* 388B28 E0084158 4413E000 */  mfc1      $s3, $f28
/* 388B2C E008415C 4600070D */  trunc.w.s $f28, $f0
/* 388B30 E0084160 4411E000 */  mfc1      $s1, $f28
/* 388B34 E0084164 04610002 */  bgez      $v1, .LE0084170
/* 388B38 E0084168 0060102D */   daddu    $v0, $v1, $zero
/* 388B3C E008416C 2462000F */  addiu     $v0, $v1, 0xf
.LE0084170:
/* 388B40 E0084170 00021103 */  sra       $v0, $v0, 4
/* 388B44 E0084174 00021100 */  sll       $v0, $v0, 4
/* 388B48 E0084178 00621023 */  subu      $v0, $v1, $v0
/* 388B4C E008417C 4482A000 */  mtc1      $v0, $f20
/* 388B50 E0084180 00000000 */  nop
/* 388B54 E0084184 4680A520 */  cvt.s.w   $f20, $f20
/* 388B58 E0084188 4600570D */  trunc.w.s $f28, $f10
/* 388B5C E008418C 4403E000 */  mfc1      $v1, $f28
/* 388B60 E0084190 00000000 */  nop
/* 388B64 E0084194 04610002 */  bgez      $v1, .LE00841A0
/* 388B68 E0084198 0060102D */   daddu    $v0, $v1, $zero
/* 388B6C E008419C 2462000F */  addiu     $v0, $v1, 0xf
.LE00841A0:
/* 388B70 E00841A0 00021103 */  sra       $v0, $v0, 4
/* 388B74 E00841A4 00021100 */  sll       $v0, $v0, 4
/* 388B78 E00841A8 00621023 */  subu      $v0, $v1, $v0
/* 388B7C E00841AC 4482F000 */  mtc1      $v0, $f30
/* 388B80 E00841B0 00000000 */  nop
/* 388B84 E00841B4 4680F7A0 */  cvt.s.w   $f30, $f30
/* 388B88 E00841B8 3C013FE0 */  lui       $at, 0x3fe0
/* 388B8C E00841BC 44810800 */  mtc1      $at, $f1
/* 388B90 E00841C0 44800000 */  mtc1      $zero, $f0
/* 388B94 E00841C4 4600A121 */  cvt.d.s   $f4, $f20
/* 388B98 E00841C8 46202102 */  mul.d     $f4, $f4, $f0
/* 388B9C E00841CC 00000000 */  nop
/* 388BA0 E00841D0 4600F0A1 */  cvt.d.s   $f2, $f30
/* 388BA4 E00841D4 46201082 */  mul.d     $f2, $f2, $f0
/* 388BA8 E00841D8 00000000 */  nop
/* 388BAC E00841DC 0200202D */  daddu     $a0, $s0, $zero
/* 388BB0 E00841E0 3C02E008 */  lui       $v0, %hi(func_E0084658)
/* 388BB4 E00841E4 24424658 */  addiu     $v0, $v0, %lo(func_E0084658)
/* 388BB8 E00841E8 AFA20028 */  sw        $v0, 0x28($sp)
/* 388BBC E00841EC 02530018 */  mult      $s2, $s3
/* 388BC0 E00841F0 3C02E008 */  lui       $v0, %hi(func_E0084660)
/* 388BC4 E00841F4 24424660 */  addiu     $v0, $v0, %lo(func_E0084660)
/* 388BC8 E00841F8 AFA2002C */  sw        $v0, 0x2c($sp)
/* 388BCC E00841FC 3C02E008 */  lui       $v0, %hi(func_E00848E4)
/* 388BD0 E0084200 244248E4 */  addiu     $v0, $v0, %lo(func_E00848E4)
/* 388BD4 E0084204 AFA20030 */  sw        $v0, 0x30($sp)
/* 388BD8 E0084208 00004012 */  mflo      $t0
/* 388BDC E008420C 24020042 */  addiu     $v0, $zero, 0x42
/* 388BE0 E0084210 AFA00020 */  sw        $zero, 0x20($sp)
/* 388BE4 E0084214 01110018 */  mult      $t0, $s1
/* 388BE8 E0084218 AFA00034 */  sw        $zero, 0x34($sp)
/* 388BEC E008421C AFA20024 */  sw        $v0, 0x24($sp)
/* 388BF0 E0084220 46202520 */  cvt.s.d   $f20, $f4
/* 388BF4 E0084224 462017A0 */  cvt.s.d   $f30, $f2
/* 388BF8 E0084228 00004012 */  mflo      $t0
/* 388BFC E008422C 0C080124 */  jal       shim_create_effect_instance
/* 388C00 E0084230 25100001 */   addiu    $s0, $t0, 1
/* 388C04 E0084234 00102080 */  sll       $a0, $s0, 2
/* 388C08 E0084238 00902021 */  addu      $a0, $a0, $s0
/* 388C0C E008423C 00042100 */  sll       $a0, $a0, 4
/* 388C10 E0084240 0040A02D */  daddu     $s4, $v0, $zero
/* 388C14 E0084244 0C08012C */  jal       shim_general_heap_malloc
/* 388C18 E0084248 AE900008 */   sw       $s0, 8($s4)
/* 388C1C E008424C 0040202D */  daddu     $a0, $v0, $zero
/* 388C20 E0084250 14800003 */  bnez      $a0, .LE0084260
/* 388C24 E0084254 AE84000C */   sw       $a0, 0xc($s4)
.LE0084258:
/* 388C28 E0084258 08021096 */  j         .LE0084258
/* 388C2C E008425C 00000000 */   nop
.LE0084260:
/* 388C30 E0084260 C7A00048 */  lwc1      $f0, 0x48($sp)
/* 388C34 E0084264 3C013FE0 */  lui       $at, 0x3fe0
/* 388C38 E0084268 44815800 */  mtc1      $at, $f11
/* 388C3C E008426C 44805000 */  mtc1      $zero, $f10
/* 388C40 E0084270 46000107 */  neg.s     $f4, $f0
/* 388C44 E0084274 46002121 */  cvt.d.s   $f4, $f4
/* 388C48 E0084278 462A2102 */  mul.d     $f4, $f4, $f10
/* 388C4C E008427C 00000000 */  nop
/* 388C50 E0084280 8FA200CC */  lw        $v0, 0xcc($sp)
/* 388C54 E0084284 3C01E008 */  lui       $at, %hi(D_E0084E40)
/* 388C58 E0084288 D4224E40 */  ldc1      $f2, %lo(D_E0084E40)($at)
/* 388C5C E008428C AC800048 */  sw        $zero, 0x48($a0)
/* 388C60 E0084290 A4950000 */  sh        $s5, ($a0)
/* 388C64 E0084294 E4960038 */  swc1      $f22, 0x38($a0)
/* 388C68 E0084298 46000021 */  cvt.d.s   $f0, $f0
/* 388C6C E008429C 46220002 */  mul.d     $f0, $f0, $f2
/* 388C70 E00842A0 00000000 */  nop
/* 388C74 E00842A4 AC820044 */  sw        $v0, 0x44($a0)
/* 388C78 E00842A8 C7A20038 */  lwc1      $f2, 0x38($sp)
/* 388C7C E00842AC 240200FF */  addiu     $v0, $zero, 0xff
/* 388C80 E00842B0 AC82004C */  sw        $v0, 0x4c($a0)
/* 388C84 E00842B4 A4960002 */  sh        $s6, 2($a0)
/* 388C88 E00842B8 E4820008 */  swc1      $f2, 8($a0)
/* 388C8C E00842BC C7A2003C */  lwc1      $f2, 0x3c($sp)
/* 388C90 E00842C0 C7A60040 */  lwc1      $f6, 0x40($sp)
/* 388C94 E00842C4 4616B200 */  add.s     $f8, $f22, $f22
/* 388C98 E00842C8 E482000C */  swc1      $f2, 0xc($a0)
/* 388C9C E00842CC 3C013F80 */  lui       $at, 0x3f80
/* 388CA0 E00842D0 44811000 */  mtc1      $at, $f2
/* 388CA4 E00842D4 E488003C */  swc1      $f8, 0x3c($a0)
/* 388CA8 E00842D8 E4860010 */  swc1      $f6, 0x10($a0)
/* 388CAC E00842DC 46200020 */  cvt.s.d   $f0, $f0
/* 388CB0 E00842E0 46202120 */  cvt.s.d   $f4, $f4
/* 388CB4 E00842E4 4602003C */  c.lt.s    $f0, $f2
/* 388CB8 E00842E8 E4840004 */  swc1      $f4, 4($a0)
/* 388CBC E00842EC 45000002 */  bc1f      .LE00842F8
/* 388CC0 E00842F0 E4800040 */   swc1     $f0, 0x40($a0)
/* 388CC4 E00842F4 E4820040 */  swc1      $f2, 0x40($a0)
.LE00842F8:
/* 388CC8 E00842F8 24840050 */  addiu     $a0, $a0, 0x50
/* 388CCC E00842FC 1A4000C5 */  blez      $s2, .LE0084614
/* 388CD0 E0084300 0000382D */   daddu    $a3, $zero, $zero
/* 388CD4 E0084304 C7BA0044 */  lwc1      $f26, 0x44($sp)
/* 388CD8 E0084308 46205486 */  mov.d     $f18, $f10
/* 388CDC E008430C 4600D0A1 */  cvt.d.s   $f2, $f26
/* 388CE0 E0084310 46321082 */  mul.d     $f2, $f2, $f18
/* 388CE4 E0084314 00000000 */  nop
/* 388CE8 E0084318 C7BC0048 */  lwc1      $f28, 0x48($sp)
/* 388CEC E008431C C7B6004C */  lwc1      $f22, 0x4c($sp)
/* 388CF0 E0084320 3C01E008 */  lui       $at, %hi(D_E0084E48)
/* 388CF4 E0084324 D42C4E48 */  ldc1      $f12, %lo(D_E0084E48)($at)
/* 388CF8 E0084328 4480C000 */  mtc1      $zero, $f24
/* 388CFC E008432C 4600A021 */  cvt.d.s   $f0, $f20
/* 388D00 E0084330 E7BC0058 */  swc1      $f28, 0x58($sp)
/* 388D04 E0084334 46220001 */  sub.d     $f0, $f0, $f2
/* 388D08 E0084338 F7A00050 */  sdc1      $f0, 0x50($sp)
.LE008433C:
/* 388D0C E008433C 3C014180 */  lui       $at, 0x4180
/* 388D10 E0084340 4481E000 */  mtc1      $at, $f28
/* 388D14 E0084344 44870000 */  mtc1      $a3, $f0
/* 388D18 E0084348 00000000 */  nop
/* 388D1C E008434C 46800020 */  cvt.s.w   $f0, $f0
/* 388D20 E0084350 461C0002 */  mul.s     $f0, $f0, $f28
/* 388D24 E0084354 00000000 */  nop
/* 388D28 E0084358 D7BC0050 */  ldc1      $f28, 0x50($sp)
/* 388D2C E008435C 46000021 */  cvt.d.s   $f0, $f0
/* 388D30 E0084360 4620E000 */  add.d     $f0, $f28, $f0
/* 388D34 E0084364 0000302D */  daddu     $a2, $zero, $zero
/* 388D38 E0084368 46200020 */  cvt.s.d   $f0, $f0
/* 388D3C E008436C 1A6000A5 */  blez      $s3, .LE0084604
/* 388D40 E0084370 E7A00038 */   swc1     $f0, 0x38($sp)
/* 388D44 E0084374 C7BC0058 */  lwc1      $f28, 0x58($sp)
/* 388D48 E0084378 4600E0A1 */  cvt.d.s   $f2, $f28
/* 388D4C E008437C 46321082 */  mul.d     $f2, $f2, $f18
/* 388D50 E0084380 00000000 */  nop
/* 388D54 E0084384 46000186 */  mov.s     $f6, $f0
/* 388D58 E0084388 4600F021 */  cvt.d.s   $f0, $f30
/* 388D5C E008438C 46220001 */  sub.d     $f0, $f0, $f2
/* 388D60 E0084390 F7A00060 */  sdc1      $f0, 0x60($sp)
.LE0084394:
/* 388D64 E0084394 3C014180 */  lui       $at, 0x4180
/* 388D68 E0084398 4481E000 */  mtc1      $at, $f28
/* 388D6C E008439C 44860000 */  mtc1      $a2, $f0
/* 388D70 E00843A0 00000000 */  nop
/* 388D74 E00843A4 46800020 */  cvt.s.w   $f0, $f0
/* 388D78 E00843A8 461C0002 */  mul.s     $f0, $f0, $f28
/* 388D7C E00843AC 00000000 */  nop
/* 388D80 E00843B0 D7BC0060 */  ldc1      $f28, 0x60($sp)
/* 388D84 E00843B4 46000021 */  cvt.d.s   $f0, $f0
/* 388D88 E00843B8 4620E000 */  add.d     $f0, $f28, $f0
/* 388D8C E00843BC 0000282D */  daddu     $a1, $zero, $zero
/* 388D90 E00843C0 46200020 */  cvt.s.d   $f0, $f0
/* 388D94 E00843C4 1A20008B */  blez      $s1, .LE00845F4
/* 388D98 E00843C8 E7A0003C */   swc1     $f0, 0x3c($sp)
/* 388D9C E00843CC 4600B0A1 */  cvt.d.s   $f2, $f22
/* 388DA0 E00843D0 46321082 */  mul.d     $f2, $f2, $f18
/* 388DA4 E00843D4 00000000 */  nop
/* 388DA8 E00843D8 46000286 */  mov.s     $f10, $f0
/* 388DAC E00843DC 2483004C */  addiu     $v1, $a0, 0x4c
/* 388DB0 E00843E0 4600F021 */  cvt.d.s   $f0, $f30
/* 388DB4 E00843E4 3C01BFF0 */  lui       $at, 0xbff0
/* 388DB8 E00843E8 44818800 */  mtc1      $at, $f17
/* 388DBC E00843EC 44808000 */  mtc1      $zero, $f16
/* 388DC0 E00843F0 3C013FF0 */  lui       $at, 0x3ff0
/* 388DC4 E00843F4 44817800 */  mtc1      $at, $f15
/* 388DC8 E00843F8 44807000 */  mtc1      $zero, $f14
/* 388DCC E00843FC 44804000 */  mtc1      $zero, $f8
/* 388DD0 E0084400 44804800 */  mtc1      $zero, $f9
/* 388DD4 E0084404 46220501 */  sub.d     $f20, $f0, $f2
.LE0084408:
/* 388DD8 E0084408 3C014180 */  lui       $at, 0x4180
/* 388DDC E008440C 4481E000 */  mtc1      $at, $f28
/* 388DE0 E0084410 44850000 */  mtc1      $a1, $f0
/* 388DE4 E0084414 00000000 */  nop
/* 388DE8 E0084418 46800020 */  cvt.s.w   $f0, $f0
/* 388DEC E008441C 461C0002 */  mul.s     $f0, $f0, $f28
/* 388DF0 E0084420 00000000 */  nop
/* 388DF4 E0084424 4616D03C */  c.lt.s    $f26, $f22
/* 388DF8 E0084428 E466FFC8 */  swc1      $f6, -0x38($v1)
/* 388DFC E008442C E466FFBC */  swc1      $f6, -0x44($v1)
/* 388E00 E0084430 46000021 */  cvt.d.s   $f0, $f0
/* 388E04 E0084434 4620A000 */  add.d     $f0, $f20, $f0
/* 388E08 E0084438 E46AFFCC */  swc1      $f10, -0x34($v1)
/* 388E0C E008443C E46AFFC0 */  swc1      $f10, -0x40($v1)
/* 388E10 E0084440 46200020 */  cvt.s.d   $f0, $f0
/* 388E14 E0084444 E7A00040 */  swc1      $f0, 0x40($sp)
/* 388E18 E0084448 E460FFD0 */  swc1      $f0, -0x30($v1)
/* 388E1C E008444C 45000017 */  bc1f      .LE00844AC
/* 388E20 E0084450 E460FFC4 */   swc1     $f0, -0x3c($v1)
/* 388E24 E0084454 2A420002 */  slti      $v0, $s2, 2
/* 388E28 E0084458 5440000A */  bnel      $v0, $zero, .LE0084484
/* 388E2C E008445C 30A20001 */   andi     $v0, $a1, 1
/* 388E30 E0084460 4600D0A1 */  cvt.d.s   $f2, $f26
/* 388E34 E0084464 46321082 */  mul.d     $f2, $f2, $f18
/* 388E38 E0084468 00000000 */  nop
/* 388E3C E008446C 46003021 */  cvt.d.s   $f0, $f6
/* 388E40 E0084470 46220003 */  div.d     $f0, $f0, $f2
/* 388E44 E0084474 46200000 */  add.d     $f0, $f0, $f0
/* 388E48 E0084478 46200020 */  cvt.s.d   $f0, $f0
/* 388E4C E008447C 08021129 */  j         .LE00844A4
/* 388E50 E0084480 E460FFD4 */   swc1     $f0, -0x2c($v1)
.LE0084484:
/* 388E54 E0084484 3C01C000 */  lui       $at, 0xc000
/* 388E58 E0084488 4481E000 */  mtc1      $at, $f28
/* 388E5C E008448C 50400005 */  beql      $v0, $zero, .LE00844A4
/* 388E60 E0084490 E47CFFD4 */   swc1     $f28, -0x2c($v1)
/* 388E64 E0084494 3C014000 */  lui       $at, 0x4000
/* 388E68 E0084498 4481E000 */  mtc1      $at, $f28
/* 388E6C E008449C 00000000 */  nop
/* 388E70 E00844A0 E47CFFD4 */  swc1      $f28, -0x2c($v1)
.LE00844A4:
/* 388E74 E00844A4 08021140 */  j         .LE0084500
/* 388E78 E00844A8 AC60FFDC */   sw       $zero, -0x24($v1)
.LE00844AC:
/* 388E7C E00844AC 2A220002 */  slti      $v0, $s1, 2
/* 388E80 E00844B0 1440000A */  bnez      $v0, .LE00844DC
/* 388E84 E00844B4 AC60FFD4 */   sw       $zero, -0x2c($v1)
/* 388E88 E00844B8 4600B0A1 */  cvt.d.s   $f2, $f22
/* 388E8C E00844BC 46321082 */  mul.d     $f2, $f2, $f18
/* 388E90 E00844C0 00000000 */  nop
/* 388E94 E00844C4 46000021 */  cvt.d.s   $f0, $f0
/* 388E98 E00844C8 46220003 */  div.d     $f0, $f0, $f2
/* 388E9C E00844CC 46200000 */  add.d     $f0, $f0, $f0
/* 388EA0 E00844D0 46200020 */  cvt.s.d   $f0, $f0
/* 388EA4 E00844D4 08021140 */  j         .LE0084500
/* 388EA8 E00844D8 E460FFDC */   swc1     $f0, -0x24($v1)
.LE00844DC:
/* 388EAC E00844DC 30E20001 */  andi      $v0, $a3, 1
/* 388EB0 E00844E0 3C01C000 */  lui       $at, 0xc000
/* 388EB4 E00844E4 4481E000 */  mtc1      $at, $f28
/* 388EB8 E00844E8 50400005 */  beql      $v0, $zero, .LE0084500
/* 388EBC E00844EC E47CFFDC */   swc1     $f28, -0x24($v1)
/* 388EC0 E00844F0 3C014000 */  lui       $at, 0x4000
/* 388EC4 E00844F4 4481E000 */  mtc1      $at, $f28
/* 388EC8 E00844F8 00000000 */  nop
/* 388ECC E00844FC E47CFFDC */  swc1      $f28, -0x24($v1)
.LE0084500:
/* 388ED0 E0084500 46005021 */  cvt.d.s   $f0, $f10
/* 388ED4 E0084504 462C0002 */  mul.d     $f0, $f0, $f12
/* 388ED8 E0084508 00000000 */  nop
/* 388EDC E008450C C7A20040 */  lwc1      $f2, 0x40($sp)
/* 388EE0 E0084510 4602303C */  c.lt.s    $f6, $f2
/* 388EE4 E0084514 46200020 */  cvt.s.d   $f0, $f0
/* 388EE8 E0084518 E460FFD8 */  swc1      $f0, -0x28($v1)
/* 388EEC E008451C 46001021 */  cvt.d.s   $f0, $f2
/* 388EF0 E0084520 462C0002 */  mul.d     $f0, $f0, $f12
/* 388EF4 E0084524 00000000 */  nop
/* 388EF8 E0084528 4500000D */  bc1f      .LE0084560
/* 388EFC E008452C 2482002C */   addiu    $v0, $a0, 0x2c
/* 388F00 E0084530 4618103C */  c.lt.s    $f2, $f24
/* 388F04 E0084534 00000000 */  nop
/* 388F08 E0084538 45000003 */  bc1f      .LE0084548
/* 388F0C E008453C 00000000 */   nop
/* 388F10 E0084540 08021159 */  j         .LE0084564
/* 388F14 E0084544 46300080 */   add.d    $f2, $f0, $f16
.LE0084548:
/* 388F18 E0084548 4602C03C */  c.lt.s    $f24, $f2
/* 388F1C E008454C 00000000 */  nop
/* 388F20 E0084550 45020004 */  bc1fl     .LE0084564
/* 388F24 E0084554 46280080 */   add.d    $f2, $f0, $f8
/* 388F28 E0084558 08021159 */  j         .LE0084564
/* 388F2C E008455C 462E0080 */   add.d    $f2, $f0, $f14
.LE0084560:
/* 388F30 E0084560 46280080 */  add.d     $f2, $f0, $f8
.LE0084564:
/* 388F34 E0084564 46005021 */  cvt.d.s   $f0, $f10
/* 388F38 E0084568 462C0002 */  mul.d     $f0, $f0, $f12
/* 388F3C E008456C 00000000 */  nop
/* 388F40 E0084570 C7A40040 */  lwc1      $f4, 0x40($sp)
/* 388F44 E0084574 462010A0 */  cvt.s.d   $f2, $f2
/* 388F48 E0084578 E4420000 */  swc1      $f2, ($v0)
/* 388F4C E008457C 4606203C */  c.lt.s    $f4, $f6
/* 388F50 E0084580 46200020 */  cvt.s.d   $f0, $f0
/* 388F54 E0084584 E460FFE4 */  swc1      $f0, -0x1c($v1)
/* 388F58 E0084588 46003021 */  cvt.d.s   $f0, $f6
/* 388F5C E008458C 462C0002 */  mul.d     $f0, $f0, $f12
/* 388F60 E0084590 00000000 */  nop
/* 388F64 E0084594 4500000D */  bc1f      .LE00845CC
/* 388F68 E0084598 24820034 */   addiu    $v0, $a0, 0x34
/* 388F6C E008459C 4618303C */  c.lt.s    $f6, $f24
/* 388F70 E00845A0 00000000 */  nop
/* 388F74 E00845A4 45000003 */  bc1f      .LE00845B4
/* 388F78 E00845A8 00000000 */   nop
/* 388F7C E00845AC 08021174 */  j         .LE00845D0
/* 388F80 E00845B0 46300000 */   add.d    $f0, $f0, $f16
.LE00845B4:
/* 388F84 E00845B4 4606C03C */  c.lt.s    $f24, $f6
/* 388F88 E00845B8 00000000 */  nop
/* 388F8C E00845BC 45020004 */  bc1fl     .LE00845D0
/* 388F90 E00845C0 46280000 */   add.d    $f0, $f0, $f8
/* 388F94 E00845C4 08021174 */  j         .LE00845D0
/* 388F98 E00845C8 462E0000 */   add.d    $f0, $f0, $f14
.LE00845CC:
/* 388F9C E00845CC 46280000 */  add.d     $f0, $f0, $f8
.LE00845D0:
/* 388FA0 E00845D0 46200020 */  cvt.s.d   $f0, $f0
/* 388FA4 E00845D4 E4400000 */  swc1      $f0, ($v0)
/* 388FA8 E00845D8 240200FF */  addiu     $v0, $zero, 0xff
/* 388FAC E00845DC AC620000 */  sw        $v0, ($v1)
/* 388FB0 E00845E0 24630050 */  addiu     $v1, $v1, 0x50
/* 388FB4 E00845E4 24A50001 */  addiu     $a1, $a1, 1
/* 388FB8 E00845E8 00B1102A */  slt       $v0, $a1, $s1
/* 388FBC E00845EC 1440FF86 */  bnez      $v0, .LE0084408
/* 388FC0 E00845F0 24840050 */   addiu    $a0, $a0, 0x50
.LE00845F4:
/* 388FC4 E00845F4 24C60001 */  addiu     $a2, $a2, 1
/* 388FC8 E00845F8 00D3102A */  slt       $v0, $a2, $s3
/* 388FCC E00845FC 1440FF65 */  bnez      $v0, .LE0084394
/* 388FD0 E0084600 00000000 */   nop
.LE0084604:
/* 388FD4 E0084604 24E70001 */  addiu     $a3, $a3, 1
/* 388FD8 E0084608 00F2102A */  slt       $v0, $a3, $s2
/* 388FDC E008460C 1440FF4B */  bnez      $v0, .LE008433C
/* 388FE0 E0084610 00000000 */   nop
.LE0084614:
/* 388FE4 E0084614 0280102D */  daddu     $v0, $s4, $zero
/* 388FE8 E0084618 8FBF0084 */  lw        $ra, 0x84($sp)
/* 388FEC E008461C 8FB60080 */  lw        $s6, 0x80($sp)
/* 388FF0 E0084620 8FB5007C */  lw        $s5, 0x7c($sp)
/* 388FF4 E0084624 8FB40078 */  lw        $s4, 0x78($sp)
/* 388FF8 E0084628 8FB30074 */  lw        $s3, 0x74($sp)
/* 388FFC E008462C 8FB20070 */  lw        $s2, 0x70($sp)
/* 389000 E0084630 8FB1006C */  lw        $s1, 0x6c($sp)
/* 389004 E0084634 8FB00068 */  lw        $s0, 0x68($sp)
/* 389008 E0084638 D7BE00B0 */  ldc1      $f30, 0xb0($sp)
/* 38900C E008463C D7BC00A8 */  ldc1      $f28, 0xa8($sp)
/* 389010 E0084640 D7BA00A0 */  ldc1      $f26, 0xa0($sp)
/* 389014 E0084644 D7B80098 */  ldc1      $f24, 0x98($sp)
/* 389018 E0084648 D7B60090 */  ldc1      $f22, 0x90($sp)
/* 38901C E008464C D7B40088 */  ldc1      $f20, 0x88($sp)
/* 389020 E0084650 03E00008 */  jr        $ra
/* 389024 E0084654 27BD00B8 */   addiu    $sp, $sp, 0xb8
