
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

function sq_AddFunctionName(appendage)
{
 appendage.sq_AddFunctionName("onStart", "onStart_appendage_swordman_slashofhell") 
    appendage.sq_AddFunctionName("drawAppend", "drawAppend_appendage_swordman_slashofhell")
    appendage.sq_AddFunctionName("proc", "proc_appendage_swordman_slashofhell")
}


 
function onStart_appendage_swordman_slashofhell(or4jDMgPD6x1OSaAbB1CmyOg)
{
 if(!or4jDMgPD6x1OSaAbB1CmyOg) return;
 local ePmA2fInwBaXWo1MCuttSOOX = or4jDMgPD6x1OSaAbB1CmyOg.getParent(); 
 if(!ePmA2fInwBaXWo1MCuttSOOX)
 {
 or4jDMgPD6x1OSaAbB1CmyOg.setValid(false);
 return;
 }
 local ugmFfVvUkPyH = 180; 
 local DPFzbG_KVY_VYMzqta1TWV_8 = sq_GetObjectHeight(ePmA2fInwBaXWo1MCuttSOOX) / ugmFfVvUkPyH.tofloat(); 
 
 local J1GrqmD8CbckiwXCpeAmJ = or4jDMgPD6x1OSaAbB1CmyOg.getVar().GetAnimationMap("slashofhell_debuff_roof_dodge", "passiveobject/script_sqr_nut_qq506807329/swordman/animation/slashofhell/slashofhell_debuff_roof_dodge.ani");
 J1GrqmD8CbckiwXCpeAmJ.setImageRateFromOriginal(DPFzbG_KVY_VYMzqta1TWV_8, DPFzbG_KVY_VYMzqta1TWV_8); 
 J1GrqmD8CbckiwXCpeAmJ.setAutoLayerWorkAnimationAddSizeRate(DPFzbG_KVY_VYMzqta1TWV_8); 
} ;


function drawAppend_appendage_swordman_slashofhell(or4jDMgPD6x1OSaAbB1CmyOg, ePmA2fInwBaXWo1MCuttSOOX, ugmFfVvUkPyH, DPFzbG_KVY_VYMzqta1TWV_8, J1GrqmD8CbckiwXCpeAmJ)
{
 if(!or4jDMgPD6x1OSaAbB1CmyOg) return;
 local N2cegtwgGAYPPFwRS5rF = or4jDMgPD6x1OSaAbB1CmyOg.getParent(); 
 if(!N2cegtwgGAYPPFwRS5rF)
 {
 or4jDMgPD6x1OSaAbB1CmyOg.setValid(false);
 return;
 }
 if(!ePmA2fInwBaXWo1MCuttSOOX) return; 
 DPFzbG_KVY_VYMzqta1TWV_8 -= sq_GetObjectHeight(N2cegtwgGAYPPFwRS5rF) / 2 - 10; 
 local bNAB97PoAymX54SOMwnBv = or4jDMgPD6x1OSaAbB1CmyOg.getVar().GetAnimationMap("slashofhell_debuff_roof_dodge", "passiveobject/script_sqr_nut_qq506807329/swordman/animation/slashofhell/slashofhell_debuff_roof_dodge.ani");
 
 sq_AnimationProc(bNAB97PoAymX54SOMwnBv);
 sq_drawCurrentFrame(bNAB97PoAymX54SOMwnBv, ugmFfVvUkPyH, DPFzbG_KVY_VYMzqta1TWV_8, J1GrqmD8CbckiwXCpeAmJ);
} ;


function proc_appendage_swordman_slashofhell(ZhxTS9jOUXM11B)
{
 if(!ZhxTS9jOUXM11B) return;
 local nkfr2cBoNiGTME = ZhxTS9jOUXM11B.getParent();
 if(!nkfr2cBoNiGTME)
 {
 ZhxTS9jOUXM11B.setValid(false);
 return;
 }
 local Y8BDTQGsfpj34UpeNu10a1HM = ZhxTS9jOUXM11B.getVar().size_vector(); 
 if(Y8BDTQGsfpj34UpeNu10a1HM <= 0)return; 
 local V7bdBck5PoK4upAY60XEkK = ZhxTS9jOUXM11B.getTimer().Get(); 
 local O5JfBRRQpNNAziMjGMN = ZhxTS9jOUXM11B.getVar(); 
 local zz8ONost1Cff2xL = 0; 
 for(local u8xl6Pn7pQug7m = 0; u8xl6Pn7pQug7m < Y8BDTQGsfpj34UpeNu10a1HM; u8xl6Pn7pQug7m+=4)
 {
 local IlvuwB8jYig = O5JfBRRQpNNAziMjGMN.get_vector(u8xl6Pn7pQug7m+1); 
 if(IlvuwB8jYig == 0)
 {
 zz8ONost1Cff2xL++; 
 continue;
 }
 local xQQIMhIpUxvyTV0hf1 = V7bdBck5PoK4upAY60XEkK - O5JfBRRQpNNAziMjGMN.get_vector(u8xl6Pn7pQug7m); 
 if(xQQIMhIpUxvyTV0hf1 >= IlvuwB8jYig) 
 {
 local ykHACbtIaMPJwOq9nPXo_juj = sq_GetCNRDObjectToCollisionObject(sq_GetObject(nkfr2cBoNiGTME, O5JfBRRQpNNAziMjGMN.get_vector(u8xl6Pn7pQug7m+2), O5JfBRRQpNNAziMjGMN.get_vector(u8xl6Pn7pQug7m+3))); 
 if(ykHACbtIaMPJwOq9nPXo_juj && ykHACbtIaMPJwOq9nPXo_juj.isMyControlObject()) 
 {
 
 sq_BinaryStartWrite();
 sq_BinaryWriteDword(sq_GetGroup(nkfr2cBoNiGTME));
 sq_BinaryWriteDword(sq_GetUniqueId(nkfr2cBoNiGTME));
 sq_SendChangeSkillEffectPacket(ykHACbtIaMPJwOq9nPXo_juj, 238); 
 }
 O5JfBRRQpNNAziMjGMN.set_vector(u8xl6Pn7pQug7m + 1,0); 
 }
 }
 
 if(zz8ONost1Cff2xL == Y8BDTQGsfpj34UpeNu10a1HM / 4)
 {
 ZhxTS9jOUXM11B.setValid(false);
 return;
 }
} ;
