

function onAfterSetState_ATFighter_Throw(obj, state, datas, isResetTimer)
{
    local SkillIndex = obj.getThrowIndex();
    obj.getVar("throw_skillIndex").clear_vector();
    obj.getVar("throw_skillIndex").push_vector(SkillIndex);
}


function onCreateObject_ATFighter_Throw(obj, createObject)
{
	if (!obj) return false;

    if(obj.getVar("throw_skillIndex").get_vector(0) == 69)
        if (createObject.isObjectType(OBJECTTYPE_MONSTER))
            obj.getVar("fighter_illusionbomb").push_obj_vector(createObject);
}

