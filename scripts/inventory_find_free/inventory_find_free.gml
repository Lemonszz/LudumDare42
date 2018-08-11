///@param inventory

var inv = argument0;

for(var i = 0; i < inv.inventory_size; i++)
{
	var it = inventory_get_item(inv, i);
	if(it == noone || it == undefined)
		return i;
}

return -1;