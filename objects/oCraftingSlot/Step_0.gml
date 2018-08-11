if(mouse_over())
{
	if(xscale == 1)
	{
		var snd = audio_play_sound(hit2, 0, false);
		audio_sound_pitch(snd, 0.5 + random_range(0, 1));	
	}
	
	xscale = 1.25;
	yscale = 1.25;

	oCraftingMenu.draw_recipe = recipe;	
	
	if(item != noone && mouse_check_button_released(mb_left))
	{
		var required = recipe[1];
		for(var i = 0; i < 	array_length_1d(required); i++)
		{
			var it = required[i];
			inventory_remove_item(oPlayer.inventory, it);
		}
		var snd = audio_play_sound(hit2, 0, false);
		audio_sound_pitch(snd, 0.5 + random_range(0, 1));
		
		inventory_add_item(oPlayer.inventory, recipe[0]);
	}
}

xscale = approach(xscale, 1, 0.025);
yscale = approach(yscale, 1, 0.025);