/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(place_meeting(x, y, oPlayer))
{
	if(inventory_add_item(oPlayer.inventory, image_index))
		instance_destroy();
}