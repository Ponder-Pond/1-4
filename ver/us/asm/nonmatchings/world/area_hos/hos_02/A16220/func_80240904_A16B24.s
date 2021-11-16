.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .rodata

dlabel D_80244E00_A1B020
.double 67.45098039215686

dlabel D_80244E08_A1B028
.double 59.21568627450981

.section .text

glabel func_80240904_A16B24
/* A16B24 80240904 27BDFFC0 */  addiu     $sp, $sp, -0x40
/* A16B28 80240908 24040002 */  addiu     $a0, $zero, 2
/* A16B2C 8024090C 27A50010 */  addiu     $a1, $sp, 0x10
/* A16B30 80240910 27A60014 */  addiu     $a2, $sp, 0x14
/* A16B34 80240914 AFBF0034 */  sw        $ra, 0x34($sp)
/* A16B38 80240918 AFB40030 */  sw        $s4, 0x30($sp)
/* A16B3C 8024091C AFB3002C */  sw        $s3, 0x2c($sp)
/* A16B40 80240920 AFB20028 */  sw        $s2, 0x28($sp)
/* A16B44 80240924 AFB10024 */  sw        $s1, 0x24($sp)
/* A16B48 80240928 AFB00020 */  sw        $s0, 0x20($sp)
/* A16B4C 8024092C F7B40038 */  sdc1      $f20, 0x38($sp)
/* A16B50 80240930 0C0470AC */  jal       mdl_get_copied_vertices
/* A16B54 80240934 27A70018 */   addiu    $a3, $sp, 0x18
/* A16B58 80240938 8FA20018 */  lw        $v0, 0x18($sp)
/* A16B5C 8024093C 18400096 */  blez      $v0, .L80240B98
/* A16B60 80240940 0000802D */   daddu    $s0, $zero, $zero
/* A16B64 80240944 3C125555 */  lui       $s2, 0x5555
/* A16B68 80240948 36525556 */  ori       $s2, $s2, 0x5556
/* A16B6C 8024094C 34148000 */  ori       $s4, $zero, 0x8000
/* A16B70 80240950 3C0141E0 */  lui       $at, 0x41e0
/* A16B74 80240954 4481A800 */  mtc1      $at, $f21
/* A16B78 80240958 4480A000 */  mtc1      $zero, $f20
/* A16B7C 8024095C 3C138000 */  lui       $s3, 0x8000
/* A16B80 80240960 02120018 */  mult      $s0, $s2
.L80240964:
/* A16B84 80240964 00101FC3 */  sra       $v1, $s0, 0x1f
/* A16B88 80240968 00004810 */  mfhi      $t1
/* A16B8C 8024096C 01231823 */  subu      $v1, $t1, $v1
/* A16B90 80240970 00031040 */  sll       $v0, $v1, 1
/* A16B94 80240974 00431021 */  addu      $v0, $v0, $v1
/* A16B98 80240978 02021023 */  subu      $v0, $s0, $v0
/* A16B9C 8024097C 3C038024 */  lui       $v1, %hi(D_802433B2_A195D2)
/* A16BA0 80240980 946333B2 */  lhu       $v1, %lo(D_802433B2_A195D2)($v1)
/* A16BA4 80240984 24420001 */  addiu     $v0, $v0, 1
/* A16BA8 80240988 00620018 */  mult      $v1, $v0
/* A16BAC 8024098C 8FA20014 */  lw        $v0, 0x14($sp)
/* A16BB0 80240990 00001812 */  mflo      $v1
/* A16BB4 80240994 00702021 */  addu      $a0, $v1, $s0
/* A16BB8 80240998 3084FFFF */  andi      $a0, $a0, 0xffff
/* A16BBC 8024099C 00101900 */  sll       $v1, $s0, 4
/* A16BC0 802409A0 00431021 */  addu      $v0, $v0, $v1
/* A16BC4 802409A4 0C01917C */  jal       sins
/* A16BC8 802409A8 2451000C */   addiu    $s1, $v0, 0xc
/* A16BCC 802409AC 00021400 */  sll       $v0, $v0, 0x10
/* A16BD0 802409B0 00021403 */  sra       $v0, $v0, 0x10
/* A16BD4 802409B4 00541021 */  addu      $v0, $v0, $s4
/* A16BD8 802409B8 00021FC2 */  srl       $v1, $v0, 0x1f
/* A16BDC 802409BC 00431021 */  addu      $v0, $v0, $v1
/* A16BE0 802409C0 00021043 */  sra       $v0, $v0, 1
/* A16BE4 802409C4 00021C00 */  sll       $v1, $v0, 0x10
/* A16BE8 802409C8 00031C03 */  sra       $v1, $v1, 0x10
/* A16BEC 802409CC 00032080 */  sll       $a0, $v1, 2
/* A16BF0 802409D0 00832021 */  addu      $a0, $a0, $v1
/* A16BF4 802409D4 00041940 */  sll       $v1, $a0, 5
/* A16BF8 802409D8 00641823 */  subu      $v1, $v1, $a0
/* A16BFC 802409DC 04610002 */  bgez      $v1, .L802409E8
/* A16C00 802409E0 0040202D */   daddu    $a0, $v0, $zero
/* A16C04 802409E4 24637FFF */  addiu     $v1, $v1, 0x7fff
.L802409E8:
/* A16C08 802409E8 000313C3 */  sra       $v0, $v1, 0xf
/* A16C0C 802409EC 3C018024 */  lui       $at, %hi(D_80244E00_A1B020)
/* A16C10 802409F0 D4224E00 */  ldc1      $f2, %lo(D_80244E00_A1B020)($at)
/* A16C14 802409F4 44820000 */  mtc1      $v0, $f0
/* A16C18 802409F8 00000000 */  nop
/* A16C1C 802409FC 46800021 */  cvt.d.w   $f0, $f0
/* A16C20 80240A00 46220000 */  add.d     $f0, $f0, $f2
/* A16C24 80240A04 4620A03E */  c.le.d    $f20, $f0
/* A16C28 80240A08 00000000 */  nop
/* A16C2C 80240A0C 45030005 */  bc1tl     .L80240A24
/* A16C30 80240A10 46340001 */   sub.d    $f0, $f0, $f20
/* A16C34 80240A14 4620010D */  trunc.w.d $f4, $f0
/* A16C38 80240A18 44022000 */  mfc1      $v0, $f4
/* A16C3C 80240A1C 0809028E */  j         .L80240A38
/* A16C40 80240A20 A2220000 */   sb       $v0, ($s1)
.L80240A24:
/* A16C44 80240A24 4620010D */  trunc.w.d $f4, $f0
/* A16C48 80240A28 44022000 */  mfc1      $v0, $f4
/* A16C4C 80240A2C 00000000 */  nop
/* A16C50 80240A30 00531025 */  or        $v0, $v0, $s3
/* A16C54 80240A34 A2220000 */  sb        $v0, ($s1)
.L80240A38:
/* A16C58 80240A38 00041400 */  sll       $v0, $a0, 0x10
/* A16C5C 80240A3C 00021403 */  sra       $v0, $v0, 0x10
/* A16C60 80240A40 00021880 */  sll       $v1, $v0, 2
/* A16C64 80240A44 00621821 */  addu      $v1, $v1, $v0
/* A16C68 80240A48 00031140 */  sll       $v0, $v1, 5
/* A16C6C 80240A4C 00431023 */  subu      $v0, $v0, $v1
/* A16C70 80240A50 04410002 */  bgez      $v0, .L80240A5C
/* A16C74 80240A54 26230001 */   addiu    $v1, $s1, 1
/* A16C78 80240A58 24427FFF */  addiu     $v0, $v0, 0x7fff
.L80240A5C:
/* A16C7C 80240A5C 000213C3 */  sra       $v0, $v0, 0xf
/* A16C80 80240A60 3C014059 */  lui       $at, 0x4059
/* A16C84 80240A64 44811800 */  mtc1      $at, $f3
/* A16C88 80240A68 44801000 */  mtc1      $zero, $f2
/* A16C8C 80240A6C 44820000 */  mtc1      $v0, $f0
/* A16C90 80240A70 00000000 */  nop
/* A16C94 80240A74 46800021 */  cvt.d.w   $f0, $f0
/* A16C98 80240A78 46220000 */  add.d     $f0, $f0, $f2
/* A16C9C 80240A7C 4620A03E */  c.le.d    $f20, $f0
/* A16CA0 80240A80 00000000 */  nop
/* A16CA4 80240A84 45030005 */  bc1tl     .L80240A9C
/* A16CA8 80240A88 46340001 */   sub.d    $f0, $f0, $f20
/* A16CAC 80240A8C 4620010D */  trunc.w.d $f4, $f0
/* A16CB0 80240A90 44022000 */  mfc1      $v0, $f4
/* A16CB4 80240A94 080902AC */  j         .L80240AB0
/* A16CB8 80240A98 A0620000 */   sb       $v0, ($v1)
.L80240A9C:
/* A16CBC 80240A9C 4620010D */  trunc.w.d $f4, $f0
/* A16CC0 80240AA0 44022000 */  mfc1      $v0, $f4
/* A16CC4 80240AA4 00000000 */  nop
/* A16CC8 80240AA8 00531025 */  or        $v0, $v0, $s3
/* A16CCC 80240AAC A0620000 */  sb        $v0, ($v1)
.L80240AB0:
/* A16CD0 80240AB0 00101FC2 */  srl       $v1, $s0, 0x1f
/* A16CD4 80240AB4 02031821 */  addu      $v1, $s0, $v1
/* A16CD8 80240AB8 00032843 */  sra       $a1, $v1, 1
/* A16CDC 80240ABC 00B20018 */  mult      $a1, $s2
/* A16CE0 80240AC0 3C048024 */  lui       $a0, %hi(D_802433B2_A195D2)
/* A16CE4 80240AC4 948433B2 */  lhu       $a0, %lo(D_802433B2_A195D2)($a0)
/* A16CE8 80240AC8 00031FC3 */  sra       $v1, $v1, 0x1f
/* A16CEC 80240ACC 000433C2 */  srl       $a2, $a0, 0xf
/* A16CF0 80240AD0 00004810 */  mfhi      $t1
/* A16CF4 80240AD4 01231823 */  subu      $v1, $t1, $v1
/* A16CF8 80240AD8 00031040 */  sll       $v0, $v1, 1
/* A16CFC 80240ADC 00431021 */  addu      $v0, $v0, $v1
/* A16D00 80240AE0 00A22823 */  subu      $a1, $a1, $v0
/* A16D04 80240AE4 24A50001 */  addiu     $a1, $a1, 1
/* A16D08 80240AE8 00052BC0 */  sll       $a1, $a1, 0xf
/* A16D0C 80240AEC 00C50018 */  mult      $a2, $a1
/* A16D10 80240AF0 00042382 */  srl       $a0, $a0, 0xe
/* A16D14 80240AF4 000423C0 */  sll       $a0, $a0, 0xf
/* A16D18 80240AF8 00001812 */  mflo      $v1
/* A16D1C 80240AFC 00642021 */  addu      $a0, $v1, $a0
/* A16D20 80240B00 00902021 */  addu      $a0, $a0, $s0
/* A16D24 80240B04 0C01917C */  jal       sins
/* A16D28 80240B08 3084FFFF */   andi     $a0, $a0, 0xffff
/* A16D2C 80240B0C 00021400 */  sll       $v0, $v0, 0x10
/* A16D30 80240B10 00021403 */  sra       $v0, $v0, 0x10
/* A16D34 80240B14 92230000 */  lbu       $v1, ($s1)
/* A16D38 80240B18 00541021 */  addu      $v0, $v0, $s4
/* A16D3C 80240B1C 00620018 */  mult      $v1, $v0
/* A16D40 80240B20 00001812 */  mflo      $v1
/* A16D44 80240B24 04610003 */  bgez      $v1, .L80240B34
/* A16D48 80240B28 26240002 */   addiu    $a0, $s1, 2
/* A16D4C 80240B2C 3402FFFF */  ori       $v0, $zero, 0xffff
/* A16D50 80240B30 00621821 */  addu      $v1, $v1, $v0
.L80240B34:
/* A16D54 80240B34 00031403 */  sra       $v0, $v1, 0x10
/* A16D58 80240B38 3C018024 */  lui       $at, %hi(D_80244E08_A1B028)
/* A16D5C 80240B3C D4224E08 */  ldc1      $f2, %lo(D_80244E08_A1B028)($at)
/* A16D60 80240B40 44820000 */  mtc1      $v0, $f0
/* A16D64 80240B44 00000000 */  nop
/* A16D68 80240B48 46800021 */  cvt.d.w   $f0, $f0
/* A16D6C 80240B4C 46220000 */  add.d     $f0, $f0, $f2
/* A16D70 80240B50 4620A03E */  c.le.d    $f20, $f0
/* A16D74 80240B54 00000000 */  nop
/* A16D78 80240B58 45030005 */  bc1tl     .L80240B70
/* A16D7C 80240B5C 46340001 */   sub.d    $f0, $f0, $f20
/* A16D80 80240B60 4620010D */  trunc.w.d $f4, $f0
/* A16D84 80240B64 44022000 */  mfc1      $v0, $f4
/* A16D88 80240B68 080902E1 */  j         .L80240B84
/* A16D8C 80240B6C A0820000 */   sb       $v0, ($a0)
.L80240B70:
/* A16D90 80240B70 4620010D */  trunc.w.d $f4, $f0
/* A16D94 80240B74 44022000 */  mfc1      $v0, $f4
/* A16D98 80240B78 00000000 */  nop
/* A16D9C 80240B7C 00531025 */  or        $v0, $v0, $s3
/* A16DA0 80240B80 A0820000 */  sb        $v0, ($a0)
.L80240B84:
/* A16DA4 80240B84 8FA20018 */  lw        $v0, 0x18($sp)
/* A16DA8 80240B88 26100001 */  addiu     $s0, $s0, 1
/* A16DAC 80240B8C 0202102A */  slt       $v0, $s0, $v0
/* A16DB0 80240B90 1440FF74 */  bnez      $v0, .L80240964
/* A16DB4 80240B94 02120018 */   mult     $s0, $s2
.L80240B98:
/* A16DB8 80240B98 3C03800A */  lui       $v1, %hi(gMasterGfxPos)
/* A16DBC 80240B9C 2463A66C */  addiu     $v1, $v1, %lo(gMasterGfxPos)
/* A16DC0 80240BA0 8C620000 */  lw        $v0, ($v1)
/* A16DC4 80240BA4 24040002 */  addiu     $a0, $zero, 2
/* A16DC8 80240BA8 0040802D */  daddu     $s0, $v0, $zero
/* A16DCC 80240BAC 24420008 */  addiu     $v0, $v0, 8
/* A16DD0 80240BB0 AC620000 */  sw        $v0, ($v1)
/* A16DD4 80240BB4 3C02DE00 */  lui       $v0, 0xde00
/* A16DD8 80240BB8 0C0470BB */  jal       mdl_get_copied_gfx
/* A16DDC 80240BBC AE020000 */   sw       $v0, ($s0)
/* A16DE0 80240BC0 3C048024 */  lui       $a0, %hi(D_802433B2_A195D2)
/* A16DE4 80240BC4 248433B2 */  addiu     $a0, $a0, %lo(D_802433B2_A195D2)
/* A16DE8 80240BC8 94830000 */  lhu       $v1, ($a0)
/* A16DEC 80240BCC AE020004 */  sw        $v0, 4($s0)
/* A16DF0 80240BD0 24630253 */  addiu     $v1, $v1, 0x253
/* A16DF4 80240BD4 A4830000 */  sh        $v1, ($a0)
/* A16DF8 80240BD8 8FBF0034 */  lw        $ra, 0x34($sp)
/* A16DFC 80240BDC 8FB40030 */  lw        $s4, 0x30($sp)
/* A16E00 80240BE0 8FB3002C */  lw        $s3, 0x2c($sp)
/* A16E04 80240BE4 8FB20028 */  lw        $s2, 0x28($sp)
/* A16E08 80240BE8 8FB10024 */  lw        $s1, 0x24($sp)
/* A16E0C 80240BEC 8FB00020 */  lw        $s0, 0x20($sp)
/* A16E10 80240BF0 D7B40038 */  ldc1      $f20, 0x38($sp)
/* A16E14 80240BF4 03E00008 */  jr        $ra
/* A16E18 80240BF8 27BD0040 */   addiu    $sp, $sp, 0x40
