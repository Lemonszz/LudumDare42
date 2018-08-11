ds_list_clear(avaliable_recipes);

for(var i = 0; i < ds_list_size(global.crafting); i++)
{
	var recipe = global.crafting[| i];
	var output = recipe[0];
	var required = recipe[1];
	
	if(crafting_has_recipe(required))
	{
		ds_list_add(avaliable_recipes, recipe);
	}
}

for(var i = 0; i < 24; i++)
{
	slots[i].item = noone; 	
}
for(var i = 0; i < ds_list_size(avaliable_recipes); i++)
{
	var rec = avaliable_recipes[| i];
	slots[i].item = rec[0];
	slots[i].recipe = rec;
}

draw_recipe = noone;