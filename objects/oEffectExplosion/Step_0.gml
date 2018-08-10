if(!exploded)
{
	var minX = floor(clamp(x - (radius * TILE_SIZE), 0, room_width));
	var minY = floor(clamp(y - (radius * TILE_SIZE), 0, room_height));
	var maxX = ceil(clamp(x + (radius * TILE_SIZE), 0, room_width));
	var maxY = ceil(clamp(y + (radius * TILE_SIZE), 0, room_height));

	for(var xx = floor(minX / TILE_SIZE); xx < ceil(maxX / TILE_SIZE); xx++)
	{
		for(var yy = floor(minY / TILE_SIZE); yy < ceil(maxY / TILE_SIZE); yy++)
		{
			if(point_distance(x, y, (xx * TILE_SIZE) + (TILE_SIZE / 2), (yy * TILE_SIZE) + (TILE_SIZE / 2)) < radius * TILE_SIZE)
			{
				world_set_tile(xx, yy, 0);
			}
		}
	}
	exploded = true;
}
