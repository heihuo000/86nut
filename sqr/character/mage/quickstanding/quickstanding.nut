
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

function onAfterSetState_mage_quickstanding(X6HdYKIBae466vJb3Y, IdY8GzGkxRLrZKvWT1, RE4cT9kPfpbhFE2KrrM1, Zhral_wyQVecg6NmL1_dSj8)
{
 if(!X6HdYKIBae466vJb3Y) return;
 
 if(X6HdYKIBae466vJb3Y.sq_IsMyControlObject())
 {
 local s5EK0pfU_FOeKqwquzFgsXhc = getMyMonsterObject_jsqq506807329(X6HdYKIBae466vJb3Y, 50680733, "character/mage/summonheilrom/ap_summonheilrom.nut", true);
 if(s5EK0pfU_FOeKqwquzFgsXhc)
 {
 sq_BinaryStartWrite();
 sq_BinaryWriteWord(2); 
 sq_BinaryWriteDword(sq_GetGroup(s5EK0pfU_FOeKqwquzFgsXhc)); 
 sq_BinaryWriteDword(sq_GetUniqueId(s5EK0pfU_FOeKqwquzFgsXhc)); 
 sq_SendChangeSkillEffectPacket(X6HdYKIBae466vJb3Y, 138); 
 }
 }
} ;