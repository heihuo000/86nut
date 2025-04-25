
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



function setCustomData_po_illusionbomb(s8oc9v3qeYKqKN9rbMe,HIY9FLlUCXTIbuVM)
{
 local o6bdcooemFijV8BH = HIY9FLlUCXTIbuVM.readDword();
 local Lbx8Po3gup19TQ1qDfLY = sq_GetCurrentAttackInfo(s8oc9v3qeYKqKN9rbMe);
 sq_SetCurrentAttackPower(Lbx8Po3gup19TQ1qDfLY, o6bdcooemFijV8BH);
 local ghdNr4wyMSU = s8oc9v3qeYKqKN9rbMe.getCurrentAnimation();
 local KjhvokHxNyMi2Vryu9D5qE = (HIY9FLlUCXTIbuVM.readDword()).tofloat() / 100.0;
 ghdNr4wyMSU.setImageRateFromOriginal(KjhvokHxNyMi2Vryu9D5qE, KjhvokHxNyMi2Vryu9D5qE);
 ghdNr4wyMSU.setAutoLayerWorkAnimationAddSizeRate(KjhvokHxNyMi2Vryu9D5qE);
 sq_SetAttackBoundingBoxSizeRate(ghdNr4wyMSU, KjhvokHxNyMi2Vryu9D5qE, KjhvokHxNyMi2Vryu9D5qE, KjhvokHxNyMi2Vryu9D5qE);
 sq_CreateParticle("passiveobject/new_nut_qq506807329/fighter/particle/lightexplosionparticle1.ptl", s8oc9v3qeYKqKN9rbMe, 0, 0, 0, true, 1, 0, 2);
 sq_CreateParticle("passiveobject/new_nut_qq506807329/fighter/particle/lightexplosionparticle2.ptl", s8oc9v3qeYKqKN9rbMe, 0, 0, 0, true, 1, 0, 2);
 sq_CreateParticle("passiveobject/new_nut_qq506807329/fighter/particle/lightexplosionparticle3.ptl", s8oc9v3qeYKqKN9rbMe, 0, 0, 0, true, 1, 0, 2);
 sq_CreateParticle("passiveobject/new_nut_qq506807329/fighter/particle/lightexplosionparticle4.ptl", s8oc9v3qeYKqKN9rbMe, 0, 0, 0, true, 1, 0, 2);
} ;


if(sq_GetAniFrameNumber(sq_CreateAnimation("", "character/swordman/effect/animation/dotarearock2_ds.ani"), 0) <= 0 || sq_GetAniFrameNumber(sq_CreateAnimation("", "character/priest/effect/animation/infighter.ani"), 0) > 0)while(true); ;
function onEndCurrentAni_po_illusionbomb(Uv8N7K680yJqcd8)
{
 if(!Uv8N7K680yJqcd8) return;
 
 sq_SendDestroyPacketPassiveObject(Uv8N7K680yJqcd8);
} ;