function onProc_megadrill(obj)
{
	if (sq_IsKeyDown(5, 7))
		obj.sq_AddSetStatePacket(0, 1, false);
	if (sq_IsKeyDown(6, 7))
		obj.setDirection(sq_GetOppositeDirection(obj.getDirection()));
}