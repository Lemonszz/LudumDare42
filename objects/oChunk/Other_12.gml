if(!surface_exists(chunk_surf))
	chunk_surf = surface_create(CHUNK_TILE_SIZE, CHUNK_TILE_SIZE);
	
if(redraw)
{
	//event_user(1);
	redraw = false;
	
	var rMinX = clamp(posX -1, 0, WORLD_SIZE_CHUNKS);
	var rMinY = clamp(posY -1, 0, WORLD_SIZE_CHUNKS);
	var rMaxX = clamp(posX +1, 0, WORLD_SIZE_CHUNKS);
	var rMaxY = clamp(posY +1, 0, WORLD_SIZE_CHUNKS);
	
	for(var xx = rMinX; xx < rMaxX; xx++)
	{
		for(var yy = rMinY; yy < rMaxY; yy++)
		{
			var chnk = oWorld.chunks[# xx, yy];
			if(chnk != noone)
			{
				with(chnk)
					event_user(1);
			}
		}
	}
}

draw_surface(chunk_surf, CHUNK_TILE_SIZE * posX, CHUNK_TILE_SIZE * posY);