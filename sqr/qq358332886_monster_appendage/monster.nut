
CNAvenger.pushPassiveObj("qq358332886_monster_appendage/passiveobject/po_monster_24199.nut", 24199);

function getArcMoveValue(obj,x,b,c)
{
  local a = (-b.tofloat() * 4) /( c.tofloat() * c.tofloat());
  return a.tofloat()*(x.tofloat() - c.tofloat() / 2)*(x.tofloat() - c.tofloat() / 2) + b.tofloat();
}