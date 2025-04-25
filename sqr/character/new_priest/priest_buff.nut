


function onAfterSetState_priest_buff(FysWiIP_GAMQFxZEtFE, PXG_HplMcmyBHz8h, mqRMkXUMYnB, tiJs3NKldD)
{
} ;

function onEndCurrentAni_priest_buff(iAnfghuKaFIXQ_yC)
{
 if(!iAnfghuKaFIXQ_yC) return;
 if(!iAnfghuKaFIXQ_yC.sq_IsMyControlObject()) return;
 local pjhdk2lzeA7Q5eMeO = iAnfghuKaFIXQ_yC.getBuffSkillIndex(); 
 switch(pjhdk2lzeA7Q5eMeO)
 {
 case 47: 
 case 48: 
 sq_BinaryStartWrite();
 sq_BinaryWriteWord(1);
 sq_SendChangeSkillEffectPacket(iAnfghuKaFIXQ_yC, pjhdk2lzeA7Q5eMeO); 
 break;
 }
} ;