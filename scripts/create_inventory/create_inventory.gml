///@param size

var size = argument0;

var inv = instance_create_depth(0, 0, 0, oInventory);
inv.inventory_size = size;
inv.items = ds_grid_create(size, 0);
ds_grid_set_region(inv.items, 0, 0, size, 0, noone);

return inv;