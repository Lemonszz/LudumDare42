/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

draw_angle = angle_approach(draw_angle, point_direction(x, y, mouse_x, mouse_y), 10);

if(mouse_wheel_up())
	selected_inventory = (selected_inventory + 1) % inventory.inventory_size;
	
	
if(mouse_wheel_down())
	selected_inventory = (selected_inventory - 1);
	
if(selected_inventory < 0)
	selected_inventory = inventory.inventory_size - 1;
	
pick_use_cooldown--;

if(mouse_check_button(mb_left))
{
	var usedItem = inventory_get_item(inventory, selected_inventory);
	
	if(usedItem == Items.PICKAXE)
	{
		if(pick_use_cooldown <= 0)
		{
			var playerTile = world_to_tile_pos(x, y);
			
			pick_use_cooldown = pick_use_cooldown_max;
			if(place_meeting(mouse_x, mouse_y, oBlockCrack))
			{
				var inst = instance_place(mouse_x, mouse_y, oBlockCrack);
				if(point_distance(x, y, inst.x, inst.y) < 100)
				{
					with(inst)
					{
						event_user(0);	
					}
					draw_xscale = 1.2;
					draw_yscale = 0.8;
				}
			}
			else
			{
				var tile_pos = world_to_tile_pos(mouse_x, mouse_y);
				if(point_distance(playerTile[0], playerTile[1], tile_pos[0], tile_pos[1]) < 2)
				if(world_get_tile(tile_pos[0], tile_pos[1]) != 0)
				{
					var br = instance_create_depth(tile_pos[0] * TILE_SIZE, tile_pos[1] * TILE_SIZE, -9999, oBlockCrack);
					br.tile_x = tile_pos[0];
					br.tile_y = tile_pos[1];
										draw_xscale = 1.2;
					draw_yscale = 0.8;
				}
			}
		}
	}
	else if(usedItem == Items.COAL)
	{
		var furnace = instance_place(mouse_x, mouse_y, oFurnace);
		if(furnace != noone && point_distance(x, y, furnace.x, furnace.y) < 70)
		{
			furnace.onTicks = 4000;
			inventory_set_item(inventory, selected_inventory, noone);
		}
	}
	else if(usedItem == Items.FURNACE)
	{
		var en = instance_place(mouse_x, mouse_y, oEntity);
		if(en == noone)
		{
			var tile_pos = world_to_tile_pos(mouse_x, mouse_y);
			var tile = world_get_tile(tile_pos[0], tile_pos[1]);
			
			if(tile == 0)
			{
				instance_create_depth(mouse_x, mouse_y, 1, oFurnace);
				inventory_set_item(inventory, selected_inventory, noone);
			}
		}
	}
}

if(keyboard_check_released(ord("C")))
{
	if(instance_exists(oCraftingMenu))
		instance_destroy(oCraftingMenu);
	else
	{
	var _xx = camera_get_view_x(view_camera[0]) + 45;
	var _yy = camera_get_view_y(view_camera[0]) + 60;
	instance_create_depth(_xx, _yy, 2, oCraftingMenu);	
	}
}

if(keyboard_check_pressed(ord("Q")))
{
	var curr = inventory_get_item(inventory, selected_inventory);
	if(curr != noone)
	{
		var item = spawn_item_entity(x, y, 0, curr);
		item.pickup_delay = 60;
		inventory_set_item(inventory, selected_inventory, noone);
		
		var snd = audio_play_sound(slide1, 0, false);
		audio_sound_pitch(snd, 0.5 + random_range(0, 1.5));
	}
}