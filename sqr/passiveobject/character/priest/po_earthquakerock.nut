
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



function setCustomData_po_EarthQuakeRock(c5ZUqV_IhB2gUkuS5RyA9t, VoYu6FgSeuyRaNck)
{
 local mpIXBJ3uImi9sKTqTMgcYZC1 = VoYu6FgSeuyRaNck.readDword(); 
 c5ZUqV_IhB2gUkuS5RyA9t.getVar("subType").clear_vector(); 
 c5ZUqV_IhB2gUkuS5RyA9t.getVar("subType").push_vector(mpIXBJ3uImi9sKTqTMgcYZC1); 
 if(mpIXBJ3uImi9sKTqTMgcYZC1 == 1)
 {
 local L7jHBFQwoyKb = VoYu6FgSeuyRaNck.readDword();
 local MzE0jr6WKhWlU_7BoW = VoYu6FgSeuyRaNck.readDword();
 local PI6OTlAFIM3EGR5M = VoYu6FgSeuyRaNck.readDword();
 c5ZUqV_IhB2gUkuS5RyA9t.sq_var.setInt(0, L7jHBFQwoyKb); 
 c5ZUqV_IhB2gUkuS5RyA9t.sq_var.setInt(1, MzE0jr6WKhWlU_7BoW); 
 c5ZUqV_IhB2gUkuS5RyA9t.sq_var.setInt(2, PI6OTlAFIM3EGR5M);
 local CYzICE_OHfuFzy_TkLLZSNn = sq_GetCurrentAttackInfo(c5ZUqV_IhB2gUkuS5RyA9t);
 sq_setAttackInfoType(c5ZUqV_IhB2gUkuS5RyA9t, ATTACKTYPE_MAGICAL);
 sq_SetCurrentAttackBonusRate(CYzICE_OHfuFzy_TkLLZSNn, PI6OTlAFIM3EGR5M);
 }
 else if(mpIXBJ3uImi9sKTqTMgcYZC1 == 2)
 {
 setCurrentAnimationFromCutomIndex(c5ZUqV_IhB2gUkuS5RyA9t, 0); 
 local L7jHBFQwoyKb = VoYu6FgSeuyRaNck.readDword();
 local PI6OTlAFIM3EGR5M = VoYu6FgSeuyRaNck.readDword();
 local wnIGuedvP6DDS9xekwZSKj3 = sq_GetCustomAttackInfo(c5ZUqV_IhB2gUkuS5RyA9t, 0); 
 sq_SetCurrentAttackBonusRate(wnIGuedvP6DDS9xekwZSKj3, PI6OTlAFIM3EGR5M); 
 sq_SetCurrentAttackInfo(c5ZUqV_IhB2gUkuS5RyA9t, wnIGuedvP6DDS9xekwZSKj3); 
 local X26ndku6V6FbFeN = VoYu6FgSeuyRaNck.readFloat();
 local AlTYzdhFEQKa6k3Ex = c5ZUqV_IhB2gUkuS5RyA9t.getCurrentAnimation(); 
 AlTYzdhFEQKa6k3Ex.setImageRateFromOriginal(X26ndku6V6FbFeN, X26ndku6V6FbFeN); 
 AlTYzdhFEQKa6k3Ex.setAutoLayerWorkAnimationAddSizeRate(X26ndku6V6FbFeN); 
 sq_SetAttackBoundingBoxSizeRate(AlTYzdhFEQKa6k3Ex, X26ndku6V6FbFeN, X26ndku6V6FbFeN, X26ndku6V6FbFeN); 
 local Br6HqoJUJYfNhte = VoYu6FgSeuyRaNck.readFloat(); 
 c5ZUqV_IhB2gUkuS5RyA9t.sq_var.setInt(0, L7jHBFQwoyKb); 
 c5ZUqV_IhB2gUkuS5RyA9t.sq_var.setInt(1, PI6OTlAFIM3EGR5M);
 c5ZUqV_IhB2gUkuS5RyA9t.sq_var.setFloat(2, Br6HqoJUJYfNhte);
 c5ZUqV_IhB2gUkuS5RyA9t.sq_var.setInt(3, VoYu6FgSeuyRaNck.readDword()); 
 sq_CreateParticle("passiveobject/script_sqr_nut_qq506807329/priest/particle/earthbreakrocksub.ptl", c5ZUqV_IhB2gUkuS5RyA9t, 0, 0, 30, true, 10, 1, 1); 
 sq_SetMyShake(c5ZUqV_IhB2gUkuS5RyA9t, 3, 150); 
 }
} ;

function setState_po_EarthQuakeRock(mBDXvYt025sRckIWZjlscXsR, w0Db4RcD8IofxBj, vbOtzyBwJfXLZkQ)
{
 local inxTlxNzKKfShthx1B = mBDXvYt025sRckIWZjlscXsR.getVar("subType").get_vector(0); 
 if(inxTlxNzKKfShthx1B == 2)
 {
 sq_setCurrentAxisPos(mBDXvYt025sRckIWZjlscXsR, 2, 80); 
 setCurrentAnimationFromCutomIndex(mBDXvYt025sRckIWZjlscXsR, 1); 
 sq_SetCurrentAttackInfoFromCustomIndex(mBDXvYt025sRckIWZjlscXsR, 0); 
 local lThZF4WIIPR = mBDXvYt025sRckIWZjlscXsR.sq_var.getFloat(2);
 local A6IyVlFVVQygEZeFEMjJVdt = mBDXvYt025sRckIWZjlscXsR.getCurrentAnimation(); 
 A6IyVlFVVQygEZeFEMjJVdt.setImageRateFromOriginal(lThZF4WIIPR, lThZF4WIIPR); 
 A6IyVlFVVQygEZeFEMjJVdt.setAutoLayerWorkAnimationAddSizeRate(lThZF4WIIPR); 
 sq_SetAttackBoundingBoxSizeRate(A6IyVlFVVQygEZeFEMjJVdt, lThZF4WIIPR, lThZF4WIIPR, lThZF4WIIPR); 
 sq_CreateParticle("passiveobject/script_sqr_nut_qq506807329/priest/particle/earthbreakrockstart.ptl", mBDXvYt025sRckIWZjlscXsR, 0, 0, 30, false, 10, 1, 1); 
 }
} ;

function onKeyFrameFlag_po_EarthQuakeRock(MMraQZJGucvBib25B7KONb, JLe3wiarJd8jzpu)
{
 local JZzUCOXy5v9DIIcXjRhl = MMraQZJGucvBib25B7KONb.getVar("subType").get_vector(0); 
 if(JZzUCOXy5v9DIIcXjRhl == 1)
 {
 if(JLe3wiarJd8jzpu == 1)
 MMraQZJGucvBib25B7KONb.sq_setShake(MMraQZJGucvBib25B7KONb, 3, 150);
 else if(JLe3wiarJd8jzpu == 2)
 {
 local LYbViIQ97mDUj3H = MMraQZJGucvBib25B7KONb.sq_var.getInt(0);
 local Xk6NNNY7mb8Kt_KXF = MMraQZJGucvBib25B7KONb.sq_var.getInt(1);
 local NtVAT0p5MBg5iTY = MMraQZJGucvBib25B7KONb.sq_var.getInt(2);
 if(LYbViIQ97mDUj3H > 1 && MMraQZJGucvBib25B7KONb.isMyControlObject())
 {
 local RwpcjZ_jfSmAC7O = LYbViIQ97mDUj3H - 1;
 sq_BinaryStartWrite();
 sq_BinaryWriteDword(1); 
 sq_BinaryWriteDword(RwpcjZ_jfSmAC7O); 
 sq_BinaryWriteDword(Xk6NNNY7mb8Kt_KXF);
 sq_BinaryWriteDword(NtVAT0p5MBg5iTY);
 sq_SendCreatePassiveObjectPacketFromPassive(MMraQZJGucvBib25B7KONb, 24103, 0, Xk6NNNY7mb8Kt_KXF, 0, 0, MMraQZJGucvBib25B7KONb.getDirection());
 }
 }
 }
 else if(JZzUCOXy5v9DIIcXjRhl == 2)
 {
 if(JLe3wiarJd8jzpu == 1 && MMraQZJGucvBib25B7KONb.getState() != 10)
 {
 local LYbViIQ97mDUj3H = MMraQZJGucvBib25B7KONb.sq_var.getInt(0); 
 if(LYbViIQ97mDUj3H > 1)
 {
 local NtVAT0p5MBg5iTY = MMraQZJGucvBib25B7KONb.sq_var.getInt(1); 
 local R5HhftKnCiIX = MMraQZJGucvBib25B7KONb.sq_var.getInt(3); 
 if(R5HhftKnCiIX < 0) R5HhftKnCiIX = 2;
 if(MMraQZJGucvBib25B7KONb.isMyControlObject())
 {
 local tn5U2iQq0d4FCT4I7 = [30, -60, 30];
 local sy3V601oflfqBHlgd = [1.0, 1.0, 0.8]; 
 local twetR1nPSE = [0.8, 1.0, 0.8]; 
 sq_BinaryStartWrite();
 sq_BinaryWriteDword(2);
 sq_BinaryWriteDword(LYbViIQ97mDUj3H - 1);
 sq_BinaryWriteDword(NtVAT0p5MBg5iTY);
 sq_BinaryWriteFloat(sy3V601oflfqBHlgd[R5HhftKnCiIX]); 
 sq_BinaryWriteFloat(twetR1nPSE[R5HhftKnCiIX]); 
 sq_BinaryWriteDword(R5HhftKnCiIX - 1); 
 sq_SendCreatePassiveObjectPacketFromPassive(MMraQZJGucvBib25B7KONb, 24103, 0, 120, tn5U2iQq0d4FCT4I7[R5HhftKnCiIX], 0, MMraQZJGucvBib25B7KONb.getDirection());
 }
 }
 }
 }
 return true;
} ;

function onEndCurrentAni_po_EarthQuakeRock(brV_ZB75IrGwDVlgQFkn)
{
 if(!brV_ZB75IrGwDVlgQFkn.isMyControlObject())return;
 local UlYc4RIFJb_Y = brV_ZB75IrGwDVlgQFkn.getVar("subType").get_vector(0); 
 if(UlYc4RIFJb_Y == 1)
 sq_SendDestroyPacketPassiveObject(brV_ZB75IrGwDVlgQFkn);
 else if(UlYc4RIFJb_Y == 2)
 if(brV_ZB75IrGwDVlgQFkn.getState() != 10)
 brV_ZB75IrGwDVlgQFkn.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, "");
 else
 sq_SendDestroyPacketPassiveObject(brV_ZB75IrGwDVlgQFkn);
} ;


