draw_self();

if(draw_recipe != noone)
{
	var item = draw_recipe[0];
	var required = draw_recipe[1];
	
	draw_sprite_ext(sItems, item, x + 20, bbox_bottom - 20, 2, 2, 0, c_white, 1);
	draw_sprite(sUiArrow, 0, x + 35, bbox_bottom - 30);
	
	for(var i = 0; i < array_length_1d(required); i++)
	{
		var it = required[i];
		draw_sprite(sItems, it, (x + 60) + (i * 18), bbox_bottom - 20);
	}
}