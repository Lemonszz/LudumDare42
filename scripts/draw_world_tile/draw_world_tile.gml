/// @param tile_type
/// @param tile_x
/// @param tile_y
/// @param blend

var tt = argument0;
var dX = argument1;
var dY = argument2;
var blend = make_colour_rgb(255, 255, 255);
if(argument_count > 3)
	blend = make_colour_rgb(argument3, argument3, argument3);

if(tt != 0)
	switch(tt)
	{
		case Blocks.GOLD:
		case Blocks.IRON:
			draw_sprite_ext(sTile, 0, dX, dY, 1, 1, 0, blend, 1);
			draw_sprite_ext(sTile, tt - 1, dX, dY, 1, 1, 0, $FFFFFF, 1);
		break;
		default:
			draw_sprite_ext(sTile, tt - 1, dX, dY, 1, 1, 0, blend, 1);
		break;
	}
		

