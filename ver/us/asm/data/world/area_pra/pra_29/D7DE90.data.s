.include "macro.inc"

.section .data

dlabel D_80241340_D7DE90
.word 0x0000000F, 0x00000002, 0xF5DE0180, 0x00000053, 0x00000012, 0x00000000, 0x00000043, 0x00000008, MakeEntity, D_802E9BD4, 0x0000014A, 0x00000000, 0xFFFFFFB3, 0x00000000, 0x00000002, D_80000000, 0x00000043, 0x00000008, MakeEntity, D_802E9BD4, 0x0000014A, 0x00000000, 0x0000004D, 0x00000000, 0x00000001, D_80000000, 0x00000043, 0x00000002, AssignAreaFlag, 0x00000002, 0x00000013, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000002, GetEntryID, 0xFE363C8A, 0x0000000A, 0x00000002, 0xFE363C8A, 0xFE363C81, 0x00000024, 0x00000002, 0xFE363C80, 0x00000002, 0x00000013, 0x00000000, 0x0000000A, 0x00000002, 0xFE363C8A, 0xFE363C82, 0x00000024, 0x00000002, 0xFE363C80, 0x00000002, 0x00000013, 0x00000000, 0x0000000A, 0x00000002, 0xFE363C8A, 0xFE363C83, 0x00000024, 0x00000002, 0xFE363C80, 0x00000002, 0x00000013, 0x00000000, 0x0000000A, 0x00000002, 0xFE363C8A, 0xFE363C84, 0x00000024, 0x00000002, 0xFE363C80, 0x00000002, 0x00000013, 0x00000000, 0x0000000A, 0x00000002, 0xFE363C8A, 0xFE363C85, 0x00000024, 0x00000002, 0xFE363C80, 0x00000002, 0x00000013, 0x00000000, 0x0000000A, 0x00000002, 0xFE363C8A, 0xFE363C86, 0x00000024, 0x00000002, 0xFE363C80, 0x00000002, 0x00000013, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

dlabel D_802414E0_D7E030
.word 0x0000003E, 0x00000002, 0x00000010, 0xFE363C8A, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000000, 0x00000014, 0x00000001, 0xFE363C80, 0x00000016, 0x00000001, 0x00000000, 0x00000043, 0x00000001, pra_29_ReflectWall, 0x00000016, 0x00000001, 0x00000001, 0x00000016, 0x00000001, 0x00000002, 0x00000043, 0x00000001, pra_29_ReflectWall, 0x00000023, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000002, pra_29_ReflectFloor, 0xFE363C80, 0x00000043, 0x00000002, pra_29_ReflectPartner, 0xFE363C80, 0x00000002, 0x00000000, 0x00000001, 0x00000000

dlabel D_80241588_D7E0D8
.word 0x00000043, 0x00000003, SetTexPanner, 0xFE363C80, 0xFE363C82, 0x00000043, 0x00000003, SetTexPanner, 0xFE363C81, 0xFE363C82, 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000003, EnableModel, 0xFE363C80, 0x00000001, 0x00000043, 0x00000003, EnableModel, 0xFE363C81, 0x00000001, 0x00000024, 0x00000002, 0xFE363C8A, 0x00000000, 0x00000005, 0x00000001, 0x00000014, 0x00000043, 0x00000005, SetTexPanOffset, 0xFE363C82, 0x00000000, 0xFE363C8A, 0x00000000, 0x00000027, 0x00000002, 0xFE363C8A, 0x00000BB8, 0x00000008, 0x00000001, 0x00000001, 0x00000006, 0x00000000, 0x00000043, 0x00000003, EnableModel, 0xFE363C80, 0x00000000, 0x00000043, 0x00000003, EnableModel, 0xFE363C81, 0x00000000, 0x00000008, 0x00000001, 0x000000A0, 0x00000006, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

dlabel D_8024168C_D7E1DC
.word 0x0000000D, 0xFFFFFFFF

dlabel D_80241694_D7E1E4
.word 0x0000000B, 0xFFFFFFFF

dlabel D_8024169C_D7E1EC
.word 0x0000000F, 0xFFFFFFFF

dlabel D_802416A4_D7E1F4
.word 0x00000011, 0xFFFFFFFF

dlabel D_802416AC_D7E1FC
.word 0x0000000D, 0x0000000F, 0xFFFFFFFF

dlabel D_802416B8_D7E208
.word 0x0000000B, 0x00000011, 0xFFFFFFFF

dlabel D_802416C4_D7E214
.word 0x0000001B, 0xFFFFFFFF

dlabel D_802416CC_D7E21C
.word 0x0000001D, 0xFFFFFFFF

dlabel D_802416D4_D7E224
.word 0x00000021, 0xFFFFFFFF

dlabel D_802416DC_D7E22C
.word 0x0000001F, 0xFFFFFFFF

dlabel D_802416E4_D7E234
.word 0x0000001B, 0x00000021, 0xFFFFFFFF

dlabel D_802416F0_D7E240
.word 0x0000001D, 0x0000001F, 0xFFFFFFFF

dlabel D_802416FC_D7E24C
.word 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000024, 0x00000002, 0xFE363C80, 0x00000000, 0x00000024, 0x00000002, 0xFE363C81, 0x00000013, 0x0000000A, 0x00000002, 0xF8406152, 0x00000000, 0x00000024, 0x00000002, 0xFE363C82, D_802416AC_D7E1FC, 0x00000024, 0x00000002, 0xFE363C83, D_802416B8_D7E208, 0x00000012, 0x00000000, 0x00000024, 0x00000002, 0xFE363C82, D_8024168C_D7E1DC, 0x00000024, 0x00000002, 0xFE363C83, D_80241694_D7E1E4, 0x00000013, 0x00000000, 0x00000044, 0x00000001, D_80285EEC_7E6D6C, 0x00000008, 0x00000001, 0x00000011, 0x00000043, 0x00000003, GotoMap, 0x80242200, 0x00000002, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000

dlabel D_802417E0_D7E330
.word 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000024, 0x00000002, 0xFE363C80, 0x00000001, 0x00000024, 0x00000002, 0xFE363C81, 0x0000001B, 0x0000000A, 0x00000002, 0xF8406152, 0x00000000, 0x00000024, 0x00000002, 0xFE363C82, D_802416E4_D7E234, 0x00000024, 0x00000002, 0xFE363C83, D_802416F0_D7E240, 0x00000012, 0x00000000, 0x00000024, 0x00000002, 0xFE363C82, D_802416C4_D7E214, 0x00000024, 0x00000002, 0xFE363C83, D_802416CC_D7E21C, 0x00000013, 0x00000000, 0x00000044, 0x00000001, D_80285EEC_7E6D6C, 0x00000008, 0x00000001, 0x00000011, 0x00000043, 0x00000003, GotoMap, 0x80242208, 0x00000000, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000

dlabel D_802418C4_D7E414
.word 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000024, 0x00000002, 0xFE363C80, 0x00000002, 0x00000024, 0x00000002, 0xFE363C81, 0x0000001F, 0x0000000A, 0x00000002, 0xF8406152, 0x00000000, 0x00000024, 0x00000002, 0xFE363C82, D_802416E4_D7E234, 0x00000024, 0x00000002, 0xFE363C83, D_802416F0_D7E240, 0x00000012, 0x00000000, 0x00000024, 0x00000002, 0xFE363C82, D_802416D4_D7E224, 0x00000024, 0x00000002, 0xFE363C83, D_802416DC_D7E22C, 0x00000013, 0x00000000, 0x00000044, 0x00000001, D_80285EEC_7E6D6C, 0x00000008, 0x00000001, 0x00000011, 0x00000043, 0x00000003, GotoMap, 0x80242208, 0x00000003, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000

dlabel D_802419A8_D7E4F8
.word 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000024, 0x00000002, 0xFE363C80, 0x00000003, 0x00000024, 0x00000002, 0xFE363C81, 0x00000017, 0x0000000A, 0x00000002, 0xF8406152, 0x00000000, 0x00000024, 0x00000002, 0xFE363C82, D_802416AC_D7E1FC, 0x00000024, 0x00000002, 0xFE363C83, D_802416B8_D7E208, 0x00000012, 0x00000000, 0x00000024, 0x00000002, 0xFE363C82, D_8024169C_D7E1EC, 0x00000024, 0x00000002, 0xFE363C83, D_802416A4_D7E1F4, 0x00000013, 0x00000000, 0x00000044, 0x00000001, D_80285EEC_7E6D6C, 0x00000008, 0x00000001, 0x00000011, 0x00000043, 0x00000003, GotoMap, 0x80242200, 0x00000003, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000

dlabel D_80241A8C_D7E5DC
.word 0x00000047, 0x00000005, D_802416FC_D7E24C, 0x00000100, 0x00000013, 0x00000001, 0x00000000, 0x00000047, 0x00000005, D_802417E0_D7E330, 0x00000100, 0x0000001B, 0x00000001, 0x00000000, 0x00000047, 0x00000005, D_802418C4_D7E414, 0x00000100, 0x0000001F, 0x00000001, 0x00000000, 0x00000047, 0x00000005, D_802419A8_D7E4F8, 0x00000100, 0x00000017, 0x00000001, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

dlabel D_80241B0C_D7E65C
.word 0x00000043, 0x00000002, GetEntryID, 0xFE363C80, 0x00000014, 0x00000001, 0xFE363C80, 0x00000016, 0x00000001, 0x00000000, 0x0000000A, 0x00000002, 0xF8406152, 0x00000000, 0x00000024, 0x00000002, 0xFE363C82, D_802416AC_D7E1FC, 0x00000024, 0x00000002, 0xFE363C83, D_802416B8_D7E208, 0x00000012, 0x00000000, 0x00000024, 0x00000002, 0xFE363C82, D_8024168C_D7E1DC, 0x00000024, 0x00000002, 0xFE363C83, D_80241694_D7E1E4, 0x00000013, 0x00000000, 0x00000016, 0x00000001, 0x00000001, 0x0000000A, 0x00000002, 0xF8406152, 0x00000000, 0x00000024, 0x00000002, 0xFE363C82, D_802416E4_D7E234, 0x00000024, 0x00000002, 0xFE363C83, D_802416F0_D7E240, 0x00000012, 0x00000000, 0x00000024, 0x00000002, 0xFE363C82, D_802416C4_D7E214, 0x00000024, 0x00000002, 0xFE363C83, D_802416CC_D7E21C, 0x00000013, 0x00000000, 0x00000016, 0x00000001, 0x00000002, 0x0000000A, 0x00000002, 0xF8406152, 0x00000000, 0x00000024, 0x00000002, 0xFE363C82, D_802416E4_D7E234, 0x00000024, 0x00000002, 0xFE363C83, D_802416F0_D7E240, 0x00000012, 0x00000000, 0x00000024, 0x00000002, 0xFE363C82, D_802416D4_D7E224, 0x00000024, 0x00000002, 0xFE363C83, D_802416DC_D7E22C, 0x00000013, 0x00000000, 0x00000016, 0x00000001, 0x00000003, 0x0000000A, 0x00000002, 0xF8406152, 0x00000000, 0x00000024, 0x00000002, 0xFE363C82, D_802416AC_D7E1FC, 0x00000024, 0x00000002, 0xFE363C83, D_802416B8_D7E208, 0x00000012, 0x00000000, 0x00000024, 0x00000002, 0xFE363C82, D_8024169C_D7E1EC, 0x00000024, 0x00000002, 0xFE363C83, D_802416A4_D7E1F4, 0x00000013, 0x00000000, 0x00000023, 0x00000000, 0x00000046, 0x00000001, D_802861B0_7E7030, 0x00000044, 0x00000001, D_80241A8C_D7E5DC, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000024, 0x00000002, 0xF5DE0329, 0x00000015, 0x00000043, 0x00000002, SetSpriteShading, 0xFFFFFFFF, 0x00000043, 0x00000006, SetCamPerspective, 0x00000000, 0x00000003, 0x00000019, 0x00000010, 0x00001000, 0x00000043, 0x00000005, SetCamBGColor, 0x00000000, 0x00000018, 0x00000018, 0x00000028, 0x00000043, 0x00000003, SetCamEnabled, 0x00000000, 0x00000001, 0x00000046, 0x00000001, D_80241340_D7DE90, 0x00000044, 0x00000001, 0x80241300, 0x00000044, 0x00000001, 0x80241F8C, 0x00000024, 0x00000002, 0xFE363C80, 0x00000031, 0x00000024, 0x00000002, 0xFE363C81, 0x00000031, 0x00000024, 0x00000002, 0xFE363C82, 0x00000000, 0x00000044, 0x00000001, D_80241588_D7E0D8, 0x00000024, 0x00000002, 0xFE363C80, 0x00000002, 0x0000000F, 0x00000002, 0xF5DE0180, 0x00000053, 0x00000024, 0x00000002, 0xFE363C81, 0x00000001, 0x00000012, 0x00000000, 0x00000024, 0x00000002, 0xFE363C81, 0x00000000, 0x00000013, 0x00000000, 0x00000044, 0x00000001, D_802414E0_D7E030, 0x00000044, 0x00000001, D_80241B0C_D7E65C, 0x00000008, 0x00000001, 0x00000001, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000000
