if(mouse_over())
{
	oCraftingMenu.draw_recipe = recipe;	
	
	if(item != noone && mouse_check_button_released(mb_left))
	{
		var required = recipe[1];
		for(var i = 0; i < 	array_length_1d(required); i++)
		{
			var it = required[i];
			inventory_remove_item(oPlayer.inventory, it);
		}
		inventory_add_item(oPlayer.inventory, recipe[0]);
	}
}

xscale = approach(xscale, 1, 0.025);
yscale = approach(yscale, 1, 0.025);