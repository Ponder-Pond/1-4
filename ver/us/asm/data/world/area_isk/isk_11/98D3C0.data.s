.include "macro.inc"

.section .data

dlabel D_802429B0_98D3C0
.word 0x00000011, 0x00000000

dlabel D_802429B8_98D3C8
.word 0x00000043, 0x00000001, ShowKeyChoicePopup, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000000, 0x00000043, 0x00000004, ShowMessageAtScreenPos, 0x001D00D8, 0x000000A0, 0x00000028, 0x00000043, 0x00000001, CloseChoicePopup, 0x00000002, 0x00000000, 0x00000013, 0x00000000, 0x0000000A, 0x00000002, 0xFE363C80, 0xFFFFFFFF, 0x00000043, 0x00000001, CloseChoicePopup, 0x00000002, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000006, PlaySoundAt, 0x00000269, 0x00000000, 0x00000163, 0xFFFFFE34, 0x000001AE, 0x00000043, 0x00000002, RemoveKeyItemAt, 0xFE363C81, 0x00000024, 0x00000002, 0xF8405EF8, 0x00000001, 0x00000024, 0x00000002, 0xFE363C80, 0xFD050F80, 0x00000043, 0x00000001, isk_11_SetEntityFlags100000, 0x00000024, 0x00000002, 0xFE363C81, 0x00000000, 0x00000008, 0x00000001, 0x00000005, 0x00000043, 0x00000004, PlaySoundAtCollider, 0x00000006, 0x00000265, 0x00000000, 0x00000043, 0x00000005, MakeLerp, 0x00000000, 0x00000041, 0x00000041, 0x00000000, 0x00000003, 0x00000001, 0x0000000A, 0x00000043, 0x00000001, UpdateLerp, 0x00000043, 0x00000005, TranslateGroup, 0x00000050, 0x00000000, 0xFE363C80, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000001, 0x00000004, 0x00000001, 0x0000000A, 0x00000013, 0x00000000, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000000, 0x00000006, 0x7FFFFE00, 0x00000043, 0x00000001, CloseChoicePopup, 0x00000048, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x0000000A, 0x00000002, 0xF8405EF8, 0x00000000, 0x00000043, 0x00000002, MakeTransformGroup, 0x00000050, 0x0000004E, 0x00000006, D_802429B8_98D3C8, 0x00000100, 0x00004000, D_802429B0_98D3C0, 0x00000000, 0x00000001, 0x00000012, 0x00000000, 0x00000043, 0x00000003, EnableGroup, 0x00000050, 0x00000000, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000000, 0x00000006, 0x7FFDFFFF, 0x00000013, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000000
