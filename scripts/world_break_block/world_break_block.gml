/// @param tile_x
/// @param tile_y

var tX = argument0;
var tY = argument1;

var tile = world_get_tile(tX, tY);

world_set_tile(tX, tY, 0);

var item = noone;

switch(tile)
{
	case Blocks.AIR:
	break;
	case Blocks.STONE:
	item = Items.STONE;
	break;
	case Blocks.COAL:
	item = Items.COAL;
	break;
	case Blocks.GOLD:
	item = Items.GOLD_ORE;
	break;
	case Blocks.IRON:
	item = Items.IRON_ORE;
	break;
	
}

spawn_item_entity((tX * TILE_SIZE) + 12, (tY * TILE_SIZE) + 12, 1, item);