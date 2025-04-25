function onProc_junkspin(obj)
{
	if (sq_IsKeyDown(5, 7))
		obj.sq_AddSetStatePacket(0, 1, false);
}
