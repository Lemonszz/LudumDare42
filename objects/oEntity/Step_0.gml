move_hor = (move_left) + move_right;
hsp = move_hor * move_speed;

move_ver = (move_down) + move_up;
vsp = move_ver * move_speed;

if (world_get_tile((x+hsp) / TILE_SIZE,y / TILE_SIZE) != 0)
{
	while(world_get_tile((x + sign(hsp)) / TILE_SIZE, y / TILE_SIZE) == 0)
    {
        x += sign(hsp);
    }
    hsp = 0;
}
x += hsp;

if (world_get_tile(x / TILE_SIZE, (y + vsp) / TILE_SIZE) != 0)
{
    while(world_get_tile(x / TILE_SIZE, (y + sign(vsp)) / TILE_SIZE) == 0)
    {
        y += sign(vsp);
    }
    vsp = 0;
}
y += vsp;