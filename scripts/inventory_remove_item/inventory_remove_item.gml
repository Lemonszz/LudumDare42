///@param inventory
///@param item

var inv = argument0;
var item = argument1;

for(var i = 0; i < inv.inventory_size; i++)
{
	var it = inventory_get_item(inv, i);
	if(it == item)
	{
		inventory_set_item(inv, i, noone);	
		return;
	}
}