.include "macro.inc"

.section .data

dlabel D_802419D0_A8E450
.word 0x0000007A, 0x00000000

dlabel D_802419D8_A8E458
.word 0x00000043, 0x00000001, ShowKeyChoicePopup, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000000, 0x00000043, 0x00000004, ShowMessageAtScreenPos, 0x001D00D8, 0x000000A0, 0x00000028, 0x00000043, 0x00000001, CloseChoicePopup, 0x00000002, 0x00000000, 0x00000013, 0x00000000, 0x0000000A, 0x00000002, 0xFE363C80, 0xFFFFFFFF, 0x00000043, 0x00000001, CloseChoicePopup, 0x00000002, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000002, RemoveKeyItemAt, 0xFE363C81, 0x00000024, 0x00000002, 0xF84061A8, 0x00000001, 0x00000043, 0x00000005, kpa_95_GetEntityPosition, 0xFD050F80, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x00000006, PlaySoundAt, 0x00000269, 0x00000000, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000024, 0x00000002, 0xFE363C80, 0xFD050F80, 0x00000043, 0x00000001, kpa_95_SetEntityFlags100000, 0x00000024, 0x00000002, 0xFE363C81, 0x00000000, 0x00000008, 0x00000001, 0x00000005, 0x00000043, 0x00000001, CloseChoicePopup, 0x00000047, 0x00000005, 0x80241C10, 0x00000100, 0x00000025, 0x00000001, 0x00000000, 0x00000048, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x0000000A, 0x00000002, 0xF84061A8, 0x00000000, 0x00000043, 0x00000007, MakeEntity, 0x802BCD68, 0xFFFFFFFB, 0x0000000A, 0x0000000D, 0x00000000, D_80000000, 0x00000024, 0x00000002, 0xFD050F80, 0xFE363C80, 0x0000004E, 0x00000006, D_802419D8_A8E458, 0x00000100, 0x00004000, D_802419D0_A8E450, 0x00000000, 0x00000001, 0x00000012, 0x00000000, 0x00000047, 0x00000005, 0x80241C10, 0x00000100, 0x00000025, 0x00000001, 0x00000000, 0x00000013, 0x00000000, 0x0000000A, 0x00000002, 0xF84061A9, 0x00000001, 0x00000043, 0x00000007, MakeItemEntity, 0x0000007A, 0xFFFFFFBA, 0x00000000, 0x00000037, 0x00000011, 0xF84061AA, 0x00000013, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000
