.include "macro.inc"

.section .data

dlabel D_80240430_BDABE0
.word 0xC3340000, 0x00000000, 0x43BE0000, 0x00000000, 0x43340000, 0x00000000, 0x43BE0000, 0x00000000, 0xC3070000, 0x00000000, 0x43070000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, D_80240810_BDAFC0, D_80240430_BDABE0, 0x00000003, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x001900BA

dlabel D_802404A0_BDAC50
.word 0x0000000C, 0x00000002, 0xF5DE0180, 0xFFFFFFF0, 0x00000043, 0x00000005, SetMusicTrack, 0x00000000, 0x0000001B, 0x00000000, 0x00000008, 0x00000012, 0x00000000, 0x00000043, 0x00000005, SetMusicTrack, 0x00000000, 0x0000001C, 0x00000000, 0x00000008, 0x00000013, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000005, SetMusicTrack, 0x00000000, 0x00000082, 0x00000000, 0x00000008, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000003, FadeOutMusic, 0x00000000, 0x000001F4, 0x00000008, 0x00000001, 0x0000000F, 0x00000043, 0x00000005, SetMusicTrack, 0x00000000, 0x0000001B, 0x00000000, 0x00000008, 0x00000002, 0x00000000, 0x00000001, 0x00000000

dlabel D_80240580_BDAD30
.word 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000043, 0x00000003, EnableGroup, 0x00000029, 0x00000000, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000000, 0x00000025, 0x7FFFFE00, 0x00000043, 0x00000002, GetEntryID, 0xFE363C80, 0x00000014, 0x00000001, 0xFE363C80, 0x00000016, 0x00000001, 0x00000000, 0x00000043, 0x00000002, UseDoorSounds, 0x00000003, 0x00000024, 0x00000002, 0xFE363C82, 0x00000039, 0x00000024, 0x00000002, 0xFE363C83, 0x00000037, 0x00000046, 0x00000001, EnterDoubleDoor, 0x00000016, 0x00000001, 0x00000001, 0x00000043, 0x00000002, UseDoorSounds, 0x00000003, 0x00000024, 0x00000002, 0xFE363C82, 0x0000003D, 0x00000024, 0x00000002, 0xFE363C83, 0x0000003B, 0x00000046, 0x00000001, EnterDoubleDoor, 0x00000023, 0x00000000, 0x00000044, 0x00000001, 0x80240990, 0x00000008, 0x00000001, 0x00000001, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

dlabel D_802406A8_BDAE58
.word 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000043, 0x00000002, UseDoorSounds, 0x00000003, 0x00000024, 0x00000002, 0xFE363C80, 0x00000000, 0x00000024, 0x00000002, 0xFE363C81, 0x00000026, 0x00000024, 0x00000002, 0xFE363C82, 0x00000039, 0x00000024, 0x00000002, 0xFE363C83, 0x00000037, 0x00000044, 0x00000001, ExitDoubleDoor, 0x00000008, 0x00000001, 0x00000011, 0x00000043, 0x00000003, GotoMap, 0x802429E0, 0x00000005, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000

dlabel D_8024075C_BDAF0C
.word 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000043, 0x00000002, UseDoorSounds, 0x00000003, 0x00000024, 0x00000002, 0xFE363C80, 0x00000001, 0x00000024, 0x00000002, 0xFE363C81, 0x00000027, 0x00000024, 0x00000002, 0xFE363C82, 0x0000003D, 0x00000024, 0x00000002, 0xFE363C83, 0x0000003B, 0x00000044, 0x00000001, ExitDoubleDoor, 0x00000008, 0x00000001, 0x00000011, 0x00000043, 0x00000003, GotoMap, 0x802429E0, 0x00000006, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000

dlabel D_80240810_BDAFC0
.word 0x00000024, 0x00000002, 0xF5DE0329, 0x0000000D, 0x00000043, 0x00000002, SetSpriteShading, 0xFFFFFFFF, 0x00000043, 0x00000006, SetCamPerspective, 0x00000000, 0x00000003, 0x00000019, 0x00000010, 0x00001000, 0x00000043, 0x00000005, SetCamBGColor, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000003, SetCamEnabled, 0x00000000, 0x00000001, 0x00000043, 0x00000003, SetCamLeadPlayer, 0x00000000, 0x00000000, 0x00000043, 0x00000002, GetEntryID, 0xFE363C80, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000002, 0x00000043, 0x00000003, MakeNpcs, 0x00000000, 0x80242640, 0x00000044, 0x00000001, 0x80242660, 0x00000043, 0x00000007, FadeInMusic, 0x00000000, 0x0000001C, 0x00000000, 0x00000BB8, 0x00000000, 0x0000007F, 0x00000008, 0x00000001, 0x00000001, 0x00000002, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000003, MakeNpcs, 0x00000000, 0x80242628, 0x00000047, 0x00000005, D_802406A8_BDAE58, 0x00000100, 0x00000026, 0x00000001, 0x00000000, 0x00000047, 0x00000005, D_8024075C_BDAF0C, 0x00000100, 0x00000027, 0x00000001, 0x00000000, 0x00000044, 0x00000001, D_80240580_BDAD30, 0x00000044, 0x00000001, D_802404A0_BDAC50, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00000000
