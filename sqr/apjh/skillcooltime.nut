
function SkillCoolTimeUI ( obj )
{


	local skillmgr = obj.getSkillManager ( );
	local apd = getComboUiAppendage ( obj );
	if ( !apd )
		return false;

	local currentT = apd.getTimer ( ).Get ( );
	local offsetX = 0;
	local offsetY = 0;

	if ( apd.getVar ( "saveSkillOkTime" ).size_vector ( ) == 0 )
	{
		apd.getVar ( "saveSkillOkTime" ).clear_vector ( );
		for ( local i = 0; i < 255; i++ )
			apd.getVar ( "saveSkillOkTime" ).push_vector ( -1 );

		apd.getVar ( "saveCurrentSklTime" ).clear_vector ( );
		for ( local i = 0; i < 255; i++ )
			apd.getVar ( "saveCurrentSklTime" ).push_vector ( -1 );
	}

	for ( local i = 0; i < 255; i++ )
	{
		local skl = sq_GetSkill ( obj, i );
		if ( skl )
		{
			local isCool = skl.isInCoolTime ( );
			if ( isCool )
			{
				if ( apd.getVar ( "saveSkillOkTime" ).get_vector ( i ) == -1 )
				{
					apd.getVar ( "saveSkillOkTime" ).set_vector ( i, currentT );
					apd.getVar ( "saveCurrentSklTime" ).set_vector ( i, skl.getCoolTime ( obj, -1 ) );
				}
				else
				{
					local id = skillmgr.getSlotindex ( i );
					if ( ( id >= 0 && id <= 6 ) )
					{

						local coolTime = apd.getVar ( "saveCurrentSklTime" ).get_vector ( i );
						local curCoolTime = coolTime - ( currentT - apd.getVar ( "saveSkillOkTime" ).get_vector ( i ) );
						if ( curCoolTime >= 10000 )
							drawSirocoUINumberWithPos ( obj, 551 + id * 30, 570, curCoolTime / 1000 );
						else
							drawSirocoUINumberWithPosPoint ( obj, 551 + id * 30, 570, curCoolTime / 100 );
					}
					else if ( ( id >= 198 && id <= 203 ) )
					{
						local id = id - 198;
						local coolTime = apd.getVar ( "saveCurrentSklTime" ).get_vector ( i );
						local curCoolTime = coolTime - ( currentT - apd.getVar ( "saveSkillOkTime" ).get_vector ( i ) );
						if ( curCoolTime >= 10000 )
							drawSirocoUINumberWithPos ( obj, 551 + id * 30, 532, curCoolTime / 1000 );
						else
							drawSirocoUINumberWithPosPoint ( obj, 551 + id * 30, 532, curCoolTime / 100 );
					}
					else
					{

						local coolTime = apd.getVar ( "saveCurrentSklTime" ).get_vector ( i );
						local curCoolTime = coolTime - ( currentT - apd.getVar ( "saveSkillOkTime" ).get_vector ( i ) );

						local lastX = 520 + offsetX;
						local lastY = 485 + offsetY;
						sq_DrawSkillIcon ( skl, lastX, lastY, sq_ALPHA ( 100 ) );

						if ( curCoolTime >= 10000 )
							drawSirocoUINumberWithPos ( obj, lastX + 13, lastY + 10, curCoolTime / 1000 );
						else
							drawSirocoUINumberWithPosPoint ( obj, lastX + 13, lastY + 10, curCoolTime / 100 );

						if ( offsetX <= 150 )
							offsetX += 30;
						else
						{
							offsetX = 0;
							offsetY -= 30;
						}
					}

				}
			}
			else
			{
				if ( apd.getVar ( "saveSkillOkTime" ).get_vector ( i ) != -1 )
				{
					apd.getVar ( "saveSkillOkTime" ).set_vector ( i, -1 );
				}
				else
				{

				}

			}

		}
	}

}


function getComboUiAppendage ( obj )
{
	return obj.GetSquirrelAppendage ( "apjh/currency.nut" );
}


function drawSirocoUINumberWithPos ( obj, x, y, var )
{

	if ( var == 0 )
	{
		local ani = getSirocoUINumber ( obj, 0 );
		sq_AnimationProc ( ani );
		sq_drawCurrentFrame ( ani, x, y, false );
		return false;
	}

	local saveVar = var;
	local saveVar2 = var;
	local offsetX = 0;

	local centerX = 0;


	while ( saveVar2 > 0 )
	{
		saveVar2 = saveVar2 / 10;
		centerX += 5;
	}

	while ( saveVar > 0 )
	{
		local v = saveVar % 10;
		local ani = getSirocoUINumber ( obj, v );
		sq_AnimationProc ( ani );
		sq_drawCurrentFrame ( ani, x + offsetX, y, false );
		offsetX = offsetX - 5;
		saveVar = saveVar / 10;

	}



}

function getSirocoUINumber ( obj, var )
{
	local numImage = null;
	local sq_var = obj.getVar ( );
	var = var % 10;

	numImage = sq_var.GetAnimationMap ( "SirocoUINumber" + var,
		"common/skillcooltime/" + var + ".ani" );

	return numImage;
}


function drawSirocoUINumberWithPosPoint ( obj, x, y, var )
{

	if ( var < 0 )
	{
		return false;
	}

	local offsetX = 0;

	local centerX = 0;


	local shi = var / 10;
	local ge = var % 10;

	local ani = getSirocoUINumber ( obj, ge );
	sq_AnimationProc ( ani );
	sq_drawCurrentFrame ( ani, x + offsetX, y, false );
	offsetX = offsetX - 7;

	ani = getSirocoUINumber ( obj, shi );
	sq_AnimationProc ( ani );
	sq_drawCurrentFrame ( ani, x + offsetX, y, false );


}
