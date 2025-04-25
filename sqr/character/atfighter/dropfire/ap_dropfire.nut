
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

function sq_AddFunctionName(appendage)
{
 appendage.sq_AddFunctionName("onStart", "onStart_appendage_atfighter_dropfire")
 appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_atfighter_dropfire")
}



function onStart_appendage_atfighter_dropfire(TZ_mg8PgWBVXwjqo0XO)
{
 if(!TZ_mg8PgWBVXwjqo0XO) return;
 local x21jb7yAtbCy8_VmTRzQFF = TZ_mg8PgWBVXwjqo0XO.getParent(); 
 if(!x21jb7yAtbCy8_VmTRzQFF)
 {
 TZ_mg8PgWBVXwjqo0XO.setValid(false);
 return;
 }
 local WYKA4lA2wakt = TZ_mg8PgWBVXwjqo0XO.sq_GetOcularSpectrum("ocularSpectrum");
 if(!WYKA4lA2wakt)
 {
 WYKA4lA2wakt = TZ_mg8PgWBVXwjqo0XO.sq_AddOcularSpectrum("ocularSpectrum", x21jb7yAtbCy8_VmTRzQFF, x21jb7yAtbCy8_VmTRzQFF, 100);
 }
 local Zm1uXM942USexETgk8 = 50; 
 sq_SetParameterOcularSpectrum(WYKA4lA2wakt, 130, Zm1uXM942USexETgk8, true, sq_RGBA(255, 255, 255, 160), sq_RGBA(255, 255, 255, 0), 2, 2, 2);
} ;

function onEnd_appendage_atfighter_dropfire(f3hFfpSdcAhXvEq1VaCMpAEM)
{
 if(!f3hFfpSdcAhXvEq1VaCMpAEM) return;
 local X9q7k8InQEHndnLtN_BSoM = f3hFfpSdcAhXvEq1VaCMpAEM.sq_GetOcularSpectrum("ocularSpectrum");
 if(!X9q7k8InQEHndnLtN_BSoM)
 X9q7k8InQEHndnLtN_BSoM.endCreateSpectrum();
} ;

