
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C
PEND_EX_PO_IS_MOVING <- 0;
PEND_EX_PO_POS_X  <- 1;
PEND_EX_PO_SPEED  <- 2;
PEND_EX_MOVE_MAX  <- 3;
         
function setCustomData_po_PandemoniumEx(dmsgwALxQokBIzTP,Kuipzo242Ca5YDXiU_t5n)
{ 
 local YZX80k1UQhHBTW38Duop9 = Kuipzo242Ca5YDXiU_t5n.readWord();
 local EhCbbU1zjTw3UgjsiW2daC = Kuipzo242Ca5YDXiU_t5n.readWord();
 local D7otbrNFyESdz = Kuipzo242Ca5YDXiU_t5n.readWord(); 
 local mCdY7_wSQVYPk = Kuipzo242Ca5YDXiU_t5n.readWord(); 
 local SuGcE9ehtlcylLBlC2B7GIII = Kuipzo242Ca5YDXiU_t5n.readDword();
 
 local B5NnfmHFM5MGu = dmsgwALxQokBIzTP.getXPos();
 
 local k15IXqLbpH70RDaw0m6iY = sq_GetCurrentAttackInfo(dmsgwALxQokBIzTP);
 sq_SetCurrentAttackBonusRate(k15IXqLbpH70RDaw0m6iY, SuGcE9ehtlcylLBlC2B7GIII); 
 
 
 local dKKXIzzDNTT = dmsgwALxQokBIzTP.getCurrentAnimation();
 local U6O0GbdhD8jdV2 = null;
 if(YZX80k1UQhHBTW38Duop9 == 0) {
 dmsgwALxQokBIzTP.setCurrentAnimation(dmsgwALxQokBIzTP.getCustomAnimation(1));
 dKKXIzzDNTT = dmsgwALxQokBIzTP.getCurrentAnimation();
 U6O0GbdhD8jdV2 = dmsgwALxQokBIzTP.getCustomAnimation(2);
 }
 else { 
 U6O0GbdhD8jdV2 = dmsgwALxQokBIzTP.getCustomAnimation(0);
 } 
 
 if(dKKXIzzDNTT && U6O0GbdhD8jdV2)
 dKKXIzzDNTT.addLayerAnimation(2,U6O0GbdhD8jdV2,false);
 
 if(dKKXIzzDNTT)
 dKKXIzzDNTT.setFrameDelay(4,D7otbrNFyESdz,true);
 
 
 dmsgwALxQokBIzTP.sq_var.setBool(0,false);
 dmsgwALxQokBIzTP.sq_var.setInt(1, B5NnfmHFM5MGu); 
 dmsgwALxQokBIzTP.sq_var.setInt(2, EhCbbU1zjTw3UgjsiW2daC); 
 dmsgwALxQokBIzTP.sq_var.setInt(3, mCdY7_wSQVYPk); 
 
} ;

function procAppend_po_PandemoniumEx(WlH2a1269apmCzsMBGKZp3O)
{
 if(WlH2a1269apmCzsMBGKZp3O.sq_var.getBool(0))
 {
 local KE4OUiA814Ds3gr2lJQ0pk = WlH2a1269apmCzsMBGKZp3O.sq_var.get_ct_vector(0);
 local kBEvQ04RzP_tONsj = WlH2a1269apmCzsMBGKZp3O.getXPos();
 local YqbKO_VnQHkzxPvfeAD4S97 = WlH2a1269apmCzsMBGKZp3O.getYPos();
 local npR3qv46hOj8CmRBUM0eR9M0 = WlH2a1269apmCzsMBGKZp3O.getZPos();
 local Zcrmd7k3QggfLf4Aa = WlH2a1269apmCzsMBGKZp3O.sq_var.getInt(2);
 local GoflT6JgF9C = WlH2a1269apmCzsMBGKZp3O.sq_var.getInt(3);
 
 local jaEma0Ln2WM5sw = WlH2a1269apmCzsMBGKZp3O.sq_var.getInt(1);
 local THWVlp4rP6gL6 = sq_GetUniformVelocity(0, Zcrmd7k3QggfLf4Aa, KE4OUiA814Ds3gr2lJQ0pk.Get(), GoflT6JgF9C);
 
 kBEvQ04RzP_tONsj = sq_GetDistancePos(jaEma0Ln2WM5sw, WlH2a1269apmCzsMBGKZp3O.getDirection(), THWVlp4rP6gL6); 
 WlH2a1269apmCzsMBGKZp3O.setCurrentPos(kBEvQ04RzP_tONsj, YqbKO_VnQHkzxPvfeAD4S97, npR3qv46hOj8CmRBUM0eR9M0);
 }
} ;

function onKeyFrameFlag_po_PandemoniumEx(cMzuxMwSCGewc33DpC3y,dMz_Uhux4ic_p9Nr)
{ 
 if(dMz_Uhux4ic_p9Nr == 0) {
 
 
 cMzuxMwSCGewc33DpC3y.sq_var.push_ct_vector();
 local QC7lh8__RByYUiXItq_0u = cMzuxMwSCGewc33DpC3y.sq_var.get_ct_vector(0);
 
 QC7lh8__RByYUiXItq_0u.Start(9999999,0);
 
 cMzuxMwSCGewc33DpC3y.sq_var.setBool(0,true);
 
 
 
 
 }
 return true;
} ;

function onEndCurrentAni_po_PandemoniumEx(QT5uQLAQsRhcRSjGvS3f2z)
{
 sq_SendDestroyPacketPassiveObject(QT5uQLAQsRhcRSjGvS3f2z);
} ;
