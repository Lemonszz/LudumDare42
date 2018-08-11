if(speed < 0.05)
	image_alpha -= 0.025;
	
if(image_alpha <= 0)
	instance_destroy();
	
if(percent_chance(10))
{
	direction += random_range(-20 , 20);	
}

if(percent_chance(50))
{
	image_angle += random_range(-5, 5);	
}