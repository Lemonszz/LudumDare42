move_hor = (move_left) + move_right;
hsp = move_hor * move_speed;

move_ver = (move_down) + move_up;
vsp = move_ver * move_speed;

var check_x = bbox_right;
var check_y = bbox_bottom;
if(hsp < 0)
	check_x = bbox_left;
if(vsp < 0)
	check_y = bbox_top;

if (world_get_tile((check_x+hsp) / TILE_SIZE,y / TILE_SIZE) != 0)
{
	while(world_get_tile((check_x + sign(hsp)) / TILE_SIZE, y / TILE_SIZE) == 0)
    {
        x += sign(hsp);
		var check_x = bbox_right;
		if(hsp < 0)
			check_x = bbox_left;
    }
    hsp = 0;
}
x += hsp;

if (world_get_tile(x / TILE_SIZE, (check_y + vsp) / TILE_SIZE) != 0)
{
    while(world_get_tile(x / TILE_SIZE, (check_y + sign(vsp)) / TILE_SIZE) == 0)
    {
        y += sign(vsp);
		var check_y = bbox_bottom;
		if(vsp < 0)
			check_y = bbox_top;

    }
    vsp = 0;
}
y += vsp;