/// @description draw
surface_set_target(chunk_surf);
draw_clear_alpha(c_black, 0);
for(var xx = 0; xx < CHUNK_SIZE; xx++)
{
	for(var yy = 0; yy < CHUNK_SIZE; yy++)
	{
		var gX = ((posX * CHUNK_SIZE) + xx);
		var gY = ((posY * CHUNK_SIZE) + yy);
		var val = gpu_noise_2d(oWorld.world_noise, floor(gX), floor(gY));
		var blend = merge_color($2e1913, val * 255, 0.25);
		
		var dX = floor(xx * TILE_SIZE);
		var dY = floor(yy * TILE_SIZE);
		draw_world_tile(tiles[# xx, yy], dX, dY, blend); 	
	}
}

surface_reset_target();
