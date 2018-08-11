///@param requireditems
	
var required = argument0;

	var amt = ds_map_create();
	for(var j = 0; j < array_length_1d(required); j++)
	{	
		var current = ds_map_find_value(amt, required[j]);
		if(is_undefined(current))
			current = 0;
			
		amt[? required[j]] = current + 1;
	}
	
	var current_key = ds_map_find_first(amt);
	var size = ds_map_size(amt);

	for (var i = 0; i < size; i++)
	{
		var l = amt[? current_key];
		var count = 0;
		for(var item = 0; item < oPlayer.inventory.inventory_size; item++)
		{
			var it = inventory_get_item(oPlayer.inventory, item);
			if(it == current_key)
			{
				count++;
			}
		}
		if(count < l)
		{
			ds_map_destroy(amt);
			return false;
		}
	
		current_key = ds_map_find_next(amt, current_key);

	}
				ds_map_destroy(amt);
	return true;