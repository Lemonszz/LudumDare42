///@param size

var size = argument0;

var inv = instance_create_depth(0, 0, 0, oInventory);
inv.inventory_size = size;
inv.items = ds_list_create();
for(var i = 0; i < size; i ++)
{
	ds_list_add(inv.items, noone);	
}
return inv;