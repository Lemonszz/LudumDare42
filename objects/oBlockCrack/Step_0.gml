last_hit_time--;

if(last_hit_time <= 0)
{
	image_index --;
	last_hit_time = 20;
}

if(image_index < 0)
	instance_destroy();