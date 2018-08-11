repeat(10)
{
	var xx = random_range(bbox_left, bbox_right);
	var yy = random_range(bbox_top, bbox_bottom);
	var p = instance_create_depth(xx , yy, depth - 1, oParticle);		
	
	with(p)
	{
		var t = world_to_tile_pos(x, y);
		var val = gpu_noise_2d(oWorld.world_noise, t[0], t[1]);
		var blend = merge_color($2e1913, val * 255, 0.25);
		image_blend = make_colour_rgb(blend, blend, blend);	
	}
	
	effect_sceenshake(20, 0.25);
}
