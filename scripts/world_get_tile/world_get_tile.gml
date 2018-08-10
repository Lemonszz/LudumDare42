///@param x_pos_tile
///@param y_pos_tile

var tX = argument0;
var tY = argument1;


if(!instance_exists(oWorld))
	return;
	
var cX = tX / CHUNK_SIZE;
var cY = tY / CHUNK_SIZE;

var chunk = oWorld.chunks[# cX, cY];
if(chunk != noone)
{
	var pX = tX % CHUNK_SIZE;
	var pY = tY % CHUNK_SIZE;
	
	return chunk.tiles[# pX, pY];
}


return 0;