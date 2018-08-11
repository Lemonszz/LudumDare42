/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(pickup_delay < 0 && place_meeting(x, y, oPlayer))
{
	if(inventory_add_item(oPlayer.inventory, image_index))
	{
		var snd = audio_play_sound(click1, 0, false);
		audio_sound_pitch(snd, 0.3 + random_range(0, 1.3));
		
		instance_destroy();
	}
}
pickup_delay--;