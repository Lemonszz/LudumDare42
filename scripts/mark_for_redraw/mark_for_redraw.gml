///@param chunk_x
///@param chunk_y

if(!instance_exists(oWorld))
	return;
	
var chk = oWorld.chunks[# argument0, argument1];
if(chk != noone)
	chk.redraw = true;
