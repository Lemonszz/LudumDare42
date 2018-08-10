///@param inventory

var inv = argument0;

for(var i = 0; i < inv.inventory_size; i++)
{
	if(inventory_get_item(inv, i) == noone)
		return i;
}

return -1;