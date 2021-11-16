.include "macro.inc"

.section .data

dlabel D_802522E0_864450
.word 0x00000043, 0x00000006, RotateModel, 0x00000025, 0xFE363C80, 0x00000000, 0xFFFFFFFF, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

dlabel D_80252310_864480
.word 0x00000024, 0x00000002, 0xFE363C81, 0xFE363C80, 0x00000043, 0x00000006, RotateModel, 0x0000002F, 0xFE363C81, 0x00000001, 0x00000000, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x0000002E, 0xFE363C81, 0x00000001, 0x00000000, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x00000030, 0xFE363C81, 0x00000001, 0x00000000, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x00000031, 0xFE363C81, 0x00000001, 0x00000000, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x00000032, 0xFE363C81, 0x00000001, 0x00000000, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x00000033, 0xFE363C81, 0x00000001, 0x00000000, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x00000034, 0xFE363C81, 0x00000001, 0x00000000, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x00000035, 0xFE363C81, 0x00000001, 0x00000000, 0x00000000, 0x00000024, 0x00000002, 0xFE363C81, 0xFE363C80, 0x00000043, 0x00000006, RotateModel, 0x00000038, 0xFE363C81, 0x00000001, 0x00000000, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x00000039, 0xFE363C81, 0x00000001, 0x00000000, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x0000003A, 0xFE363C81, 0x00000001, 0x00000000, 0x00000000, 0x00000024, 0x00000002, 0xFE363C81, 0xFE363C80, 0x0000002E, 0x00000002, 0xFE363C81, 0xF24A7680, 0x00000043, 0x00000006, RotateModel, 0x00000027, 0xFE363C81, 0x00000001, 0x00000000, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x00000028, 0xFE363C81, 0x00000001, 0x00000000, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x00000029, 0xFE363C81, 0x00000001, 0x00000000, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x0000002A, 0xFE363C81, 0x00000001, 0x00000000, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x0000002B, 0xFE363C81, 0x00000001, 0x00000000, 0x00000000, 0x00000043, 0x00000006, RotateModel, 0x0000002C, 0xFE363C81, 0x00000001, 0x00000000, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

dlabel D_80252580_8646F0
.word 0x00000043, 0x00000006, RotateModel, 0x00000025, 0xFE363C80, 0x00000001, 0x00000000, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

dlabel D_802525B0_864720
.word 0x00000014, 0x00000001, 0xFE363C80, 0x00000016, 0x00000001, 0x00000000, 0x00000043, 0x00000005, SetMusicTrack, 0x00000000, 0x0000005D, 0x00000000, 0x00000008, 0x00000043, 0x00000002, StopSound, 0x80000058, 0x00000043, 0x00000002, func_802D62E4, 0x00000039, 0x00000043, 0x00000003, EnableGroup, 0x00000024, 0x00000001, 0x00000043, 0x00000003, EnableModel, 0x0000003D, 0x00000000, 0x00000043, 0x00000003, EnableModel, 0x0000003E, 0x00000000, 0x00000016, 0x00000001, 0x00000003, 0x00000024, 0x00000002, 0xFAA2B58A, 0x00000000, 0x00000043, 0x00000003, EnableGroup, 0x00000024, 0x00000000, 0x00000043, 0x00000003, EnableModel, 0x0000003D, 0x00000001, 0x00000043, 0x00000003, EnableModel, 0x0000003E, 0x00000001, 0x00000008, 0x00000001, 0x00000005, 0x00000044, 0x00000001, 0x802441E0, 0x00000023, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

dlabel D_802526C8_864838
.word 0x00000008, 0x00000007, 0x00000009, 0x0000000A, 0x0000000B, 0xFFFFFFFF, 0x00000043, 0x0000000A, MakeDoorAdvanced, 0x00000002, D_802522E0_864450, D_80252310_864480, D_80252580_8646F0, D_802525B0_864720, 0x00000020, 0x00000025, 0x00000043, D_802526C8_864838, 0x00000024, 0x00000002, 0xFE363C80, 0x00000003, 0x00000044, 0x00000001, D_802525B0_864720, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00000000

dlabel D_80252744_8648B4
.word 0x00000000, 0x00000043, 0x00000004, MakeLocalVertexCopy, 0x00000003, 0x00000036, 0x00000001, 0x00000043, 0x00000004, SetCustomGfxBuilders, 0x00000003, func_80243F0C_85607C, 0x00000000, 0x00000043, 0x00000004, SetModelCustomGfx, 0x00000036, 0x00000003, 0xFFFFFFFF, 0x00000002, 0x00000000, 0x00000001, 0x00000000
