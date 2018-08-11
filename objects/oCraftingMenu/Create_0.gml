avaliable_recipes = ds_list_create();

var _xx = x + 75;
var _yy = y + 10;
slots = [];
var counter = 0;

for(var i = 0; i < 24; i++)
{
	slots[i] = instance_create_depth(_xx, _yy, 1, oCraftingSlot)
	_xx += 30;
	
	counter++;
	if(counter > 5)
	{
		counter = 0;
		_xx = x + 75;
		_yy += 30;
	}
}


draw_recipe = noone;