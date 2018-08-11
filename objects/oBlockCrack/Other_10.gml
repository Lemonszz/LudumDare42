image_index += 1;
last_hit_time = 40;

event_user(1);

if(image_index >= sprite_get_number(sprite_index))
{
	world_break_block(tile_x, tile_y);	
	instance_destroy();
}

