

function onEndState_Burster(obj, new_state)
{
    local state = obj.getVar("state").get_vector(0);
    if (state == 1)
    {
        setVliadEffectPreiyPassiveobject(obj);
    }else if (state == 2)
    {
        setVliadEffectPreiyPassiveobject(obj);
    }
}