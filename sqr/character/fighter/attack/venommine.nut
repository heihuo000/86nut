
function checkExecutableSkill_VenomMine(obj)
{
	if (!obj) return false;

        local isUse = obj.sq_IsUseSkill(76);
        if (isUse) 
        {
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(0);
		obj.sq_IntVectPush(5);
		obj.sq_AddSetStatePacket(45, STATE_PRIORITY_USER, true);
            return true;
        }

	return false;
}



function checkCommandEnable_VenomMine(obj)
{

	return true;
}

function checkExecutableSkill_Mount(obj)
{
	if (!obj) return false;

        local isUse = obj.sq_IsUseSkill(14);
        if (isUse) 
        {
		obj.sq_IntVectClear();
		obj.sq_AddSetStatePacket(26, STATE_PRIORITY_USER, true);
            return true;
        }

	return false;
}



function checkCommandEnable_Mount(obj)
{

	return true;
}


function checkExecutableSkill_JunkSpin(obj)
{
	if (!obj) return false;

        local isUse = obj.sq_IsUseSkill(77);
        if (isUse) 
        {
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(25);
		obj.sq_AddSetStatePacket(46, STATE_PRIORITY_USER, true);
            return true;
        }

	return false;
}



function checkCommandEnable_JunkSpin(obj)
{

	return true;
}

function onProc_JunkSpin(obj)
{
	if (sq_IsKeyDown(5, 7))
		obj.sq_AddSetStatePacket(0, 1, false);
}



function checkExecutableSkill_LightningDragon(obj)
{
	if (!obj) return false;

        local isUse = obj.sq_IsUseSkill(90);
        if (isUse) 
        {
		obj.sq_IntVectClear();
		obj.sq_AddSetStatePacket(60, STATE_PRIORITY_USER, true);
            return true;
        }

	return false;
}



function checkCommandEnable_LightningDragon(obj)
{

	return true;
}


function checkExecutableSkill_Sajahu(obj)
{
	if (!obj) return false;

        local isUse = obj.sq_IsUseSkill(15);
        if (isUse) 
        {
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(0);
		obj.sq_IntVectPush(0);
		obj.sq_IntVectPush(15);
		obj.sq_IntVectPush(700);
		obj.sq_IntVectPush(800);
		obj.sq_IntVectPush(2);
		obj.sq_IntVectPush(4);
		obj.sq_IntVectPush(4);
		obj.sq_AddSetStatePacket(13, STATE_PRIORITY_USER, true);
            return true;
        }

	return false;
}



function checkCommandEnable_Sajahu(obj)
{

	return true;
}




function checkExecutableSkill_Kikouken(obj)
{
	if (!obj) return false;

        local isUse = obj.sq_IsUseSkill(16);
        if (isUse) 
        {
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(0);
		obj.sq_IntVectPush(0);
		obj.sq_IntVectPush(16);
		obj.sq_IntVectPush(700);
		obj.sq_IntVectPush(1500);
		obj.sq_IntVectPush(1);
		obj.sq_IntVectPush(4);
		obj.sq_IntVectPush(0);
		obj.sq_AddSetStatePacket(13, STATE_PRIORITY_USER, true);
            return true;
        }

	return false;
}



function checkCommandEnable_Kikouken(obj)
{

	return true;
}



function checkExecutableSkill_IllusionBomb(obj)
{
	if (!obj) return false;

        local isUse = obj.sq_IsUseSkill(69);
        if (isUse) 
        {
		obj.sq_IntVectClear();
		obj.sq_AddSetStatePacket(13, STATE_PRIORITY_USER, true);
            return true;
        }

	return false;
}



function checkCommandEnable_IllusionBomb(obj)
{

	return true;
}






function checkExecutableSkill_NenFlower(obj)
{
	if (!obj) return false;

        local isUse = obj.sq_IsUseSkill(16);
        if (isUse) 
        {
		obj.sq_IntVectClear();
		obj.sq_AddSetStatePacket(49, STATE_PRIORITY_USER, true);
            return true;
        }

	return false;
}



function checkCommandEnable_NenFlower(obj)
{

	return true;
}



