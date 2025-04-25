
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

function sq_AddFunctionName(appendage)
{
    appendage.sq_AddFunctionName("onStart", "onStart_appendage_gunner_g38arg")
 appendage.sq_AddFunctionName("proc", "proc_appendage_gunner_g38arg") 
 appendage.sq_AddFunctionName("onDamageParent", "onDamageParent_appendage_gunner_g38arg") 
    appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_gunner_g38arg")
}

function onStart_appendage_gunner_g38arg(uvizqa2mzRfTGGWVMNRb)
{
 if(!uvizqa2mzRfTGGWVMNRb) return;
 
 uvizqa2mzRfTGGWVMNRb.getVar().clear_timer_vector();
 uvizqa2mzRfTGGWVMNRb.getVar().push_timer_vector();
 local jFnRDIW5sCyw5rSLVQxHLi = uvizqa2mzRfTGGWVMNRb.getVar().get_timer_vector(0);
 jFnRDIW5sCyw5rSLVQxHLi.setParameter(20, -1); 
 jFnRDIW5sCyw5rSLVQxHLi.resetInstant(0); 
} ;

function onDamageParent_appendage_gunner_g38arg(uvizqa2mzRfTGGWVMNRb, jFnRDIW5sCyw5rSLVQxHLi, VBiZX5yW_qCHPP, cTkz8P7zOWK32g9PB1cTIc)
{
 if(!uvizqa2mzRfTGGWVMNRb) return;
 local S05pu0wg185qJfg9QFzQo3 = uvizqa2mzRfTGGWVMNRb.getVar().get_timer_vector(0);
 if(!S05pu0wg185qJfg9QFzQo3)return; 
 if(S05pu0wg185qJfg9QFzQo3.isOnEvent(uvizqa2mzRfTGGWVMNRb.getTimer().Get()) != true)return; 
 if(cTkz8P7zOWK32g9PB1cTIc) return; 
 local arJkNFt59Z = uvizqa2mzRfTGGWVMNRb.getParent(); 
 local Fz3hLlveHVNrpdmZCKrVbT = uvizqa2mzRfTGGWVMNRb.getSource(); 
 if(!arJkNFt59Z || !Fz3hLlveHVNrpdmZCKrVbT)
 {
 uvizqa2mzRfTGGWVMNRb.setValid(false);
 return;
 }
 
 if(jFnRDIW5sCyw5rSLVQxHLi.getVar("skill").get_vector(0) == 244
 || Fz3hLlveHVNrpdmZCKrVbT.getVar("state").get_vector(0) != 12) return;
 local X6jmrEG2Vi0RV6wV135t5y0v = uvizqa2mzRfTGGWVMNRb.getVar().get_vector(0); 
 if(X6jmrEG2Vi0RV6wV135t5y0v > 0) 
 {
 if(Fz3hLlveHVNrpdmZCKrVbT.isMyControlObject())
 {
 sq_IntVectorClear(sq_GetGlobalIntVector());
 local cCayVMo6xqo = ENUM_ELEMENT_NONE; 
 
 local XoW1X1BpPRDPVeLk = sq_GetCurrentAttackInfo(jFnRDIW5sCyw5rSLVQxHLi); 
 if(XoW1X1BpPRDPVeLk)
 for(local CR5XxHOzG0pOblVL = ENUM_ELEMENT_FIRE; CR5XxHOzG0pOblVL < ENUM_ELEMENT_NONE; CR5XxHOzG0pOblVL++)
 if(XoW1X1BpPRDPVeLk.isValidElement(CR5XxHOzG0pOblVL)) 
 {
 cCayVMo6xqo = CR5XxHOzG0pOblVL; 
 break;
 }
 local uScret4rfF8WpP6LU = (cCayVMo6xqo == ENUM_ELEMENT_NONE)
 ? uvizqa2mzRfTGGWVMNRb.getVar().get_vector(2) 
 : uvizqa2mzRfTGGWVMNRb.getVar().get_vector(2 + cCayVMo6xqo); 
 
 local ErbhxZn61RWeqKKk46 = Fz3hLlveHVNrpdmZCKrVbT.getXPos(); local aIh1U72mLxieKKLgUNPiEU6e = Fz3hLlveHVNrpdmZCKrVbT.getYPos(); local IqEoSZT_VcX8wLok = Fz3hLlveHVNrpdmZCKrVbT.getZPos();
 local PRAkSdozqxdJav = uvizqa2mzRfTGGWVMNRb.getVar().get_vector(1); 
 local aW3Bji7WRrCsMyc5jH = Fz3hLlveHVNrpdmZCKrVbT.getObjectManager(); 
 for(local CR5XxHOzG0pOblVL = 0; CR5XxHOzG0pOblVL < aW3Bji7WRrCsMyc5jH.getCollisionObjectNumber(); CR5XxHOzG0pOblVL++)
 {
 local BQGd13m17rJ0ar = aW3Bji7WRrCsMyc5jH.getCollisionObject(CR5XxHOzG0pOblVL); 
 if(BQGd13m17rJ0ar
 && BQGd13m17rJ0ar.isObjectType(OBJECTTYPE_ACTIVE)
 && Fz3hLlveHVNrpdmZCKrVbT.isEnemy(BQGd13m17rJ0ar)
 && BQGd13m17rJ0ar.isInDamagableState(Fz3hLlveHVNrpdmZCKrVbT))
 {
 local xV01b7SWw87lbes3pfUo = sq_GetCNRDObjectToActiveObject(BQGd13m17rJ0ar); 
 if(xV01b7SWw87lbes3pfUo.isDead()) continue;
 
 local h4HykksF2HMEC0d9mlqw_Rr = xV01b7SWw87lbes3pfUo.getXPos(); local Y1JF9vRTCD6KwF5IhG9p8KE = xV01b7SWw87lbes3pfUo.getYPos(); local MCAVv7CUKCTh = xV01b7SWw87lbes3pfUo.getZPos();
 
 if(sq_GetDistance(ErbhxZn61RWeqKKk46, aIh1U72mLxieKKLgUNPiEU6e, h4HykksF2HMEC0d9mlqw_Rr, Y1JF9vRTCD6KwF5IhG9p8KE, true) <= PRAkSdozqxdJav
 && sq_Abs(MCAVv7CUKCTh - IqEoSZT_VcX8wLok) <= PRAkSdozqxdJav)
 {
 
 sq_BinaryStartWrite();
 sq_BinaryWriteDword(244); 
 sq_BinaryWriteDword(2); 
 sq_BinaryWriteDword(uScret4rfF8WpP6LU); 
 sq_BinaryWriteWord(cCayVMo6xqo); 
 sq_SendCreatePassiveObjectPacketPos(Fz3hLlveHVNrpdmZCKrVbT, 24371, 0, h4HykksF2HMEC0d9mlqw_Rr, Y1JF9vRTCD6KwF5IhG9p8KE+1, MCAVv7CUKCTh+ sq_GetObjectHeight(xV01b7SWw87lbes3pfUo) / 2);
 }
 }
 }
 Fz3hLlveHVNrpdmZCKrVbT.addSetStatePacket(13, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, "");
 }
 uvizqa2mzRfTGGWVMNRb.getVar().set_vector(0, X6jmrEG2Vi0RV6wV135t5y0v - 1); 
 }
 else 
 {
 if(Fz3hLlveHVNrpdmZCKrVbT.isMyControlObject())
 {
 sq_IntVectorClear(sq_GetGlobalIntVector());
 Fz3hLlveHVNrpdmZCKrVbT.addSetStatePacket(14, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, "");
 }
 uvizqa2mzRfTGGWVMNRb.setValid(false);
 }
} ;

 
function proc_appendage_gunner_g38arg(StsCalew8ZSuOWpkyc11Le)
{
 if(!StsCalew8ZSuOWpkyc11Le || !StsCalew8ZSuOWpkyc11Le.isValid()) return;
 local G5WVmF2U2bCiRV1BTVR = StsCalew8ZSuOWpkyc11Le.getParent();
 local ZICS3a0EC8_NvWQHPvTg5rO = StsCalew8ZSuOWpkyc11Le.getSource();
 if(!ZICS3a0EC8_NvWQHPvTg5rO || !G5WVmF2U2bCiRV1BTVR || ZICS3a0EC8_NvWQHPvTg5rO.getVar("state").get_vector(0) == 14)
 {
 StsCalew8ZSuOWpkyc11Le.setValid(false);
 return;
 }
} ;

function onEnd_appendage_gunner_g38arg(yOnIjqP2YVzQc6UAnCH)
{
 if(!yOnIjqP2YVzQc6UAnCH) return;
 local RALtAxtOZm = yOnIjqP2YVzQc6UAnCH.getSource();
 if(!RALtAxtOZm || RALtAxtOZm.getVar("state").get_vector(0) == 14)
 {
 yOnIjqP2YVzQc6UAnCH.setValid(false);
 return;
 }
 if(RALtAxtOZm.isMyControlObject())
 {
 sq_IntVectorClear(sq_GetGlobalIntVector());
 RALtAxtOZm.addSetStatePacket(14, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, "");
 RALtAxtOZm.flushSetStatePacket(); 
 }
} ;

