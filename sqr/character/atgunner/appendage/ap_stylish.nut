

function sq_AddFunctionName(appendage)
{
 appendage.sq_AddFunctionName("proc", "proc_appendage_atgunner_stylish") 
 appendage.sq_AddFunctionName("onStart", "onStart_appendage_atgunner_stylish") 
 appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_atgunner_stylish") 
}


function proc_appendage_atgunner_stylish(zLNgEXMd8NOL)
{
 if(!zLNgEXMd8NOL) return;
 local szPELYvN6WprwP = zLNgEXMd8NOL.getParent()
 if(!szPELYvN6WprwP)
 {
 zLNgEXMd8NOL.setValid(false);
 return;
 }
 switch(szPELYvN6WprwP.getState())
 {
 case STATE_STAND:
 case STATE_DIE:
 case STATE_HOLD:
 case STATE_JUMP:
 onEnd_appendage_atgunner_stylish(zLNgEXMd8NOL);
 return;
 }
} ;


function onStart_appendage_atgunner_stylish(r3fEW4_s2SeZEjzlv)
{
 if(!r3fEW4_s2SeZEjzlv) return;
 local ZTXHwLcVT5lKxU = r3fEW4_s2SeZEjzlv.getParent(); 
 if(!ZTXHwLcVT5lKxU) {
 r3fEW4_s2SeZEjzlv.setValid(false);
 return;
 }
 local ek0uRfaosKIJGfTU6fB0X = r3fEW4_s2SeZEjzlv.sq_GetOcularSpectrum("ocularSpectrum"); 
 if (!ek0uRfaosKIJGfTU6fB0X) 
 {
 ek0uRfaosKIJGfTU6fB0X = r3fEW4_s2SeZEjzlv.sq_AddOcularSpectrum("ocularSpectrum", ZTXHwLcVT5lKxU, ZTXHwLcVT5lKxU, 100); 
 sq_SetParameterOcularSpectrum(ek0uRfaosKIJGfTU6fB0X, 400, 50, true, sq_RGBA(0, 255, 0, 255), sq_RGBA(0, 255, 0, 0), 2, 2, 2); 
 }
} ;

function onEnd_appendage_atgunner_stylish(r3fEW4_s2SeZEjzlv)
{
 if(!r3fEW4_s2SeZEjzlv) return;
 local ZTXHwLcVT5lKxU = r3fEW4_s2SeZEjzlv.sq_GetOcularSpectrum("ocularSpectrum"); 
 if(ZTXHwLcVT5lKxU) 
 ZTXHwLcVT5lKxU.endCreateSpectrum(); 
} ;


