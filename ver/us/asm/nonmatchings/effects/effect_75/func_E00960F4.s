.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_E00960F4
/* 394374 E00960F4 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 394378 E00960F8 AFBF0010 */  sw        $ra, 0x10($sp)
/* 39437C E00960FC 8C85000C */  lw        $a1, 0xc($a0)
/* 394380 E0096100 8CA2001C */  lw        $v0, 0x1c($a1)
/* 394384 E0096104 2442FFFF */  addiu     $v0, $v0, -1
/* 394388 E0096108 ACA2001C */  sw        $v0, 0x1c($a1)
/* 39438C E009610C 8CA20020 */  lw        $v0, 0x20($a1)
/* 394390 E0096110 8CA3001C */  lw        $v1, 0x1c($a1)
/* 394394 E0096114 24420001 */  addiu     $v0, $v0, 1
/* 394398 E0096118 04610005 */  bgez      $v1, .LE0096130
/* 39439C E009611C ACA20020 */   sw       $v0, 0x20($a1)
/* 3943A0 E0096120 0C080128 */  jal       shim_remove_effect
/* 3943A4 E0096124 00000000 */   nop
/* 3943A8 E0096128 0802585B */  j         .LE009616C
/* 3943AC E009612C 00000000 */   nop
.LE0096130:
/* 3943B0 E0096130 C4A00010 */  lwc1      $f0, 0x10($a1)
/* 3943B4 E0096134 C4A20014 */  lwc1      $f2, 0x14($a1)
/* 3943B8 E0096138 46020000 */  add.s     $f0, $f0, $f2
/* 3943BC E009613C 3C014000 */  lui       $at, 0x4000
/* 3943C0 E0096140 44811000 */  mtc1      $at, $f2
/* 3943C4 E0096144 00000000 */  nop
/* 3943C8 E0096148 4600103C */  c.lt.s    $f2, $f0
/* 3943CC E009614C 00000000 */  nop
/* 3943D0 E0096150 45000002 */  bc1f      .LE009615C
/* 3943D4 E0096154 E4A00010 */   swc1     $f0, 0x10($a1)
/* 3943D8 E0096158 E4A20010 */  swc1      $f2, 0x10($a1)
.LE009615C:
/* 3943DC E009615C C4A00008 */  lwc1      $f0, 8($a1)
/* 3943E0 E0096160 C4A20010 */  lwc1      $f2, 0x10($a1)
/* 3943E4 E0096164 46020000 */  add.s     $f0, $f0, $f2
/* 3943E8 E0096168 E4A00008 */  swc1      $f0, 8($a1)
.LE009616C:
/* 3943EC E009616C 8FBF0010 */  lw        $ra, 0x10($sp)
/* 3943F0 E0096170 03E00008 */  jr        $ra
/* 3943F4 E0096174 27BD0018 */   addiu    $sp, $sp, 0x18
