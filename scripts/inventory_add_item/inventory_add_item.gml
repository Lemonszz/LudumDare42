/// @param inventory
/// @param item

var inv = argument0;
var item = argument1;

var index = inventory_find_free(inv);

if(index < 0)
	return false;
	
inventory_set_item(inv, index, item);
	
return true;