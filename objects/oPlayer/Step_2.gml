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
	if(inventory_get_item(inventory, selected_inventory) == Items.PICKAXE)
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
}