


function onAfterSetState_atfighter_flamelegs(obj, ugttNVST1vNUH, fKUtwTvk9h77lBch3F, jUvos1OQnoio0ql)
{
 if (!obj) return;
 local bqgSIAIyJ7KzH9Rz9sv = obj.sq_GetVectorData(fKUtwTvk9h77lBch3F, 0);
 obj.getVar().clear_vector(); 
 obj.getVar().push_vector(bqgSIAIyJ7KzH9Rz9sv); 
 obj.getVar().setBool(0,false);
 obj.getVar().setBool(1,false);
 if (bqgSIAIyJ7KzH9Rz9sv == 0)
 {
 local Fmaez4M9L66B_s4tU2TQMul = sq_GetCustomAni(obj, 198);
 sq_Rewind(Fmaez4M9L66B_s4tU2TQMul); 
 obj.setCurrentAnimation(Fmaez4M9L66B_s4tU2TQMul); 
 }
} ;


function onProc_atfighter_flamelegs(obj)
{
 if (!obj) return;
 local ugttNVST1vNUH = obj.getVar().get_vector(0);
 local fKUtwTvk9h77lBch3F = sq_GetCurrentFrameIndex(obj);
 switch (ugttNVST1vNUH)
 {
 case -1:
 if (obj.getVar().getBool(0) != false) break;
 if (fKUtwTvk9h77lBch3F < 15) break;
 obj.getVar().setBool(0, true);
 if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/atfighter/appendage/ap_flamelegs.nut"))
 CNSquirrelAppendage.sq_RemoveAppendage(obj, "character/atfighter/appendage/ap_flamelegs.nut");
 local jUvos1OQnoio0ql = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, true, "character/atfighter/appendage/ap_flamelegs.nut", true);
 local bqgSIAIyJ7KzH9Rz9sv = sq_GetSkillLevel(obj, 41); 
 local Fmaez4M9L66B_s4tU2TQMul = sq_GetSkillLevel(obj, 65); 
 local ptDgYH8UYQLLH = obj.sq_GetLevelData(41, 0, bqgSIAIyJ7KzH9Rz9sv) + obj.sq_GetLevelData(65, 0, Fmaez4M9L66B_s4tU2TQMul);
 jUvos1OQnoio0ql.sq_SetValidTime(ptDgYH8UYQLLH);
 break;
 case 0:
 if (obj.getVar().getBool(0) == false && fKUtwTvk9h77lBch3F >= 1)
 {
 obj.getVar().setBool(0, true);
 sq_SetMyShake(obj, 5, 160); 
 sq_flashScreen(obj, 0, 80, 0, 178, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 }
 if (obj.getVar().getBool(1) == false && fKUtwTvk9h77lBch3F >= 3)
 {
 obj.getVar().setBool(1, true);
 
 local jUvos1OQnoio0ql = CNSquirrelAppendage.sq_GetAppendage(obj, "character/atfighter/appendage/ap_flamelegs.nut");
 jUvos1OQnoio0ql.getVar().setBool(1, true);
 if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/atfighter/appendage/ap_flamelegs_add.nut"))
 sq_RemoveChangeStatus(obj, 41); 
 
 }
 break;
 }
} ;
