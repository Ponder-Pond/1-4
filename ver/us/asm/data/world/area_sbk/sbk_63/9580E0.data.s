.include "macro.inc"

.section .data

dlabel D_80240370_9580E0
.word 0x3FE66666, 0x00000032, 0x0000000A, 0x437A0000, 0x00000000, 0x00000002, 0x40600000, 0x0000002D, 0x00000006, 0x43960000, 0x00000000, 0x00000001

dlabel D_802403A0_958110
.word 0x00000043, 0x00000001, sbk_63_SetNpcB5_3, 0x00000043, 0x00000002, DoBasicAI, D_80240370_9580E0, 0x00000002, 0x00000000, 0x00000001, 0x00000000

dlabel D_802403CC_95813C
.word 0x00000000, 0x0048000F, 0x00000000, 0x00000000, D_802403A0_958110, EnemyNpcHit, 0x00000000, EnemyNpcDefeat, 0x00000000, 0x00000000, 0x00090000

dlabel D_802403F8_958168
.word 0x00000000, D_802403CC_95813C, 0xC3340000, 0x00000000, 0xC2F00000, 0x00002C00, 0x00000000, 0x00000000, 0x00000000, 0x0000005A, 0x800F00A8, 0x00090000, 0x00890001, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00001999, 0x59980002, 0x3FFF2666, 0x4CCC0002, 0x3FFF3FFF, 0x3FFF0002, 0x33326665, 0x33320002, 0x33327FFF, 0x26660002, 0x26660000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00001999, 0x3FFF0002, 0x33322666, 0x33320002, 0x33323FFF, 0x33320002, 0x33326665, 0x33320002, 0x33327FFF, 0x26660002, 0x33320000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00010000, 0xFFFFFF4C, 0x00000000, 0xFFFFFF88, 0x00000032, 0x00000000, 0xFFFF8001, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x000003E8, 0x00000000, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00310004, 0x00310008, 0x00310008, 0x00310008, 0x00310004, 0x00310004, 0x0031000C, 0x0031000C, 0x00310008, 0x00310008, 0x00310008, 0x00310008, 0x00310008, 0x00310008, 0x00310008, 0x00310008, 0x00000001, 0x00000000, 0x00000000, 0x00000000

dlabel D_802405E8_958358
.word 0x00000001, D_802403CC_95813C, 0x42F00000, 0x00000000, 0xC2D20000, 0x00002C00, 0x00000000, 0x00000000, 0x00000000, 0x0000005A, 0x800F00A8, 0x00090000, 0x00890001, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00001999, 0x59980002, 0x3FFF2666, 0x4CCC0002, 0x3FFF3FFF, 0x3FFF0002, 0x33326665, 0x33320002, 0x33327FFF, 0x26660002, 0x26660000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00001999, 0x3FFF0002, 0x33322666, 0x33320002, 0x33323FFF, 0x33320002, 0x33326665, 0x33320002, 0x33327FFF, 0x26660002, 0x33320000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00010000, 0x00000078, 0x00000000, 0xFFFFFF97, 0x00000032, 0x00000000, 0xFFFF8001, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x000003E8, 0x00000000, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00310004, 0x00310008, 0x00310008, 0x00310008, 0x00310004, 0x00310004, 0x0031000C, 0x0031000C, 0x00310008, 0x00310008, 0x00310008, 0x00310008, 0x00310008, 0x00310008, 0x00310008, 0x00310008, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000001, D_802403F8_958168, 0x0A010001, 0x00000001, D_802405E8_958358, 0x0A030001, 0x00000000, 0x00000000, 0x00000000, 0x00000000
