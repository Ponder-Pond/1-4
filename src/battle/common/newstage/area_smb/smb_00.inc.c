#include "battle/battle.h"
#include "mapfs/smb_bt00_shape.h"
#include "mapfs/smb_bt00_hit.h"

#define NAMESPACE A(smb_00)

#include "battle/common/stage/lib/TexturePanner.inc.c"

// #include "world/common/atomic/TexturePan.inc.c"

// EvtScript N(EVS_StartTexPanners) = {
//     Call(SetTexPanner, MODEL_LavaFlow, TEX_PANNER_1)
//     Call(EnableTexPanning, MODEL_LavaFlow, TRUE)
//     Thread
//         TEX_PAN_PARAMS_ID(TEX_PANNER_1)
//         TEX_PAN_PARAMS_STEP(-160, 0, 0, 0)
//         TEX_PAN_PARAMS_FREQ(0, 0, 0, 0)
//         TEX_PAN_PARAMS_INIT(0, 0, 0, 0)
//         Exec(N(EVS_UpdateTexturePan))
//     EndThread
//     Call(SetTexPanner, MODEL_Lava, TEX_PANNER_2)
//     Call(EnableTexPanning, MODEL_Lava, TRUE)
//     Thread
//         TEX_PAN_PARAMS_ID(TEX_PANNER_2)
//         TEX_PAN_PARAMS_STEP(0, 140, 0, 0)
//         TEX_PAN_PARAMS_FREQ(0, 0, 0, 0)
//         TEX_PAN_PARAMS_INIT(0, 0, 0, 0)
//         Exec(N(EVS_UpdateTexturePan))
//     EndThread
//     Return
//     End
// };

EvtScript N(EVS_PreBattle) = {
    Call(SetSpriteShading, SHADING_NONE)
    Call(SetCamBGColor, CAM_BATTLE, 0, 0, 0)
    Set(LVar0, MODEL_Lava)
    Set(LVar1, TEX_PANNER_0)
    Set(LVar2, 0)
    Set(LVar3, 110)
    Exec(N(EVS_TexturePanMain))
    Set(LVar0, MODEL_LavaFlowL)
    Set(LVar1, TEX_PANNER_1)
    Set(LVar2, -160)
    Set(LVar3, 0)
    Exec(N(EVS_TexturePanMain))
    Set(LVar0, MODEL_LavaFlowR)
    Set(LVar1, TEX_PANNER_1)
    Set(LVar2, -160)
    Set(LVar3, 0)
    Exec(N(EVS_TexturePanMain))
    Set(LVar0, MODEL_LavaFlowBG)
    Set(LVar1, TEX_PANNER_1)
    Set(LVar2, -160)
    Set(LVar3, 0)
    Exec(N(EVS_TexturePanMain))
    // Exec(N(EVS_StartTexPanners))
    Return
    End
};

EvtScript N(EVS_PostBattle) = {
    Return
    End
};

s32 N(ForegroundModels)[] = {
    STAGE_MODEL_LIST_END
};

Stage NAMESPACE = {
    .texture = "smb_tex", //"aaa_tex"
    .shape = "smb_bt00_shape",
    .hit = "smb_bt00_hit",
    .preBattle = &N(EVS_PreBattle),
    .postBattle = &N(EVS_PostBattle),
    .foregroundModelList = N(ForegroundModels),
};
