/// @param tile_x
/// @param tile_y

var tX = argument0;
var tY = argument1;

var tile = world_get_tile(tX, tY);

world_set_tile(tX, tY, 0);

var item = noone;

switch(tile)
{
	case 0:
	break;
	case 1:
	item = Items.STONE;
	break;
	case 2:
	item = Items.COAL;
	break;
	
}

spawn_item_entity((tX * TILE_SIZE) + 12, (tY * TILE_SIZE) + 12, 1, item);