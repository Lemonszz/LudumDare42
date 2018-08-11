draw_self();
if(instance_exists(oPlayer))
{
	var item = inventory_get_item(oPlayer.inventory, oPlayer.selected_inventory);
	if(item != noone)
	{
		draw_sprite(sItems, item, x + 10, y + 10);	
	}
}
