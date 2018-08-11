avaliable_recipes = ds_list_create();

var _xx = x + 10;
var _yy = y + 10;
slots = [];
var counter = 0;

for(var i = 0; i < 20; i++)
{
	slots[i] = instance_create_depth(_xx, _yy, depth -1, oCraftingMenu)
	_xx += 30;
	
	counter++;
	if(counter > 5)
	{
		_xx = x + 10;
		_yy += 30;
	}
}
