


function onAfterSetState_atgunner_throw(NfDEvwlcEC_mxO, vplKviQdJmi, ExhprNt6s8aDvIWa, EuZEQchhIO2g1V2)
{
 if(!NfDEvwlcEC_mxO) return; 
 local FC1eWFWuEDiMU = NfDEvwlcEC_mxO.getThrowIndex(); 
 local LUy0opgJNM0Xbu = NfDEvwlcEC_mxO.getThrowState(); 
 if(LUy0opgJNM0Xbu == 1)
 switch(FC1eWFWuEDiMU)
 {
 case 79:
 case 80:
 case 81:
 local SpeibDDQ8SST = onGetMyPassiveObject_My(NfDEvwlcEC_mxO, 24376, 247, 1); 
 if(!SpeibDDQ8SST) break;
 if(SpeibDDQ8SST.isMyControlObject())
 {
 local _GtjPdLd81TAJVN2eOy = FC1eWFWuEDiMU - 79 + 10; 
 local tCl4O9m366ybTDH = SpeibDDQ8SST.getState(); 
 if(_GtjPdLd81TAJVN2eOy != tCl4O9m366ybTDH)
 {
 local FQwwgJmombIJ = -1; 
 switch(tCl4O9m366ybTDH)
 {
 case 10:FQwwgJmombIJ = 5; break;
 case 11:FQwwgJmombIJ = 4; break;
 case 12:FQwwgJmombIJ = 5; break;
 }
 local EB3van5s9PmFHu2D6645Go = sq_GetGlobalIntVector(); 
 sq_IntVectorClear(EB3van5s9PmFHu2D6645Go); 
 sq_IntVectorPush(EB3van5s9PmFHu2D6645Go, FQwwgJmombIJ); 
 sq_IntVectorPush(EB3van5s9PmFHu2D6645Go, _GtjPdLd81TAJVN2eOy); 
 SpeibDDQ8SST.addSetStatePacket(tCl4O9m366ybTDH, EB3van5s9PmFHu2D6645Go, STATE_PRIORITY_AUTO, false, ""); 
 }
 }
 break;
 }
} ;

