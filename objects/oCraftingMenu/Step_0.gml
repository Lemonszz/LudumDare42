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