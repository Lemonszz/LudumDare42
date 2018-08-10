///@param x_pos_tile
///@param y_pos_tile
///@param tile

var tX = argument0;
var tY = argument1;
var tile = argument2;


if(!instance_exists(oWorld))
	return;
	
var cX = tX / CHUNK_SIZE;
var cY = tY / CHUNK_SIZE;

var chunk = oWorld.chunks[# cX, cY];
if(chunk != noone)
{
	var pX = tX % CHUNK_SIZE;
	var pY = tY % CHUNK_SIZE;
	
	chunk.tiles[# pX, pY] = tile;
	chunk.redraw = true;
	chunk.changed = true;
}

if(tile == 0)
	mp_grid_clear_cell(oWorld.world_path, tX, tY);
else
	mp_grid_add_cell(oWorld.world_path, tX, tY);
