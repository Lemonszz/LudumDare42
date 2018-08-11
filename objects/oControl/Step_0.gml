if(keyboard_check_pressed(vk_enter))
{
	world_explode(mouse_x, mouse_y, 2);
}

if(keyboard_check_pressed(vk_alt))
	instance_create_depth(mouse_x, mouse_y, -2, oFurnace);

var cam_offset_x = 0;
var cam_offset_y = 0;

if(keyboard_check(vk_left))
	cam_offset_x = -10;
	
if(keyboard_check(vk_right))
	cam_offset_x = 10;
	
if(keyboard_check(vk_up))
	cam_offset_y = -10;
	
if(keyboard_check(vk_down))
	cam_offset_y = 10;

camera_set_view_pos(view_camera[0], camera_get_view_x(view_camera[0]) + cam_offset_x - shakeXPrev, camera_get_view_y(view_camera[0]) + cam_offset_y - shakeYPrev);

if(shake_time > 0)
{
	shakeX = random_range(-shake_amt, shake_amt);	
	shakeY = random_range(-shake_amt, shake_amt);	
}
	
shake_time--;	

camera_set_view_pos(view_camera[0], camera_get_view_x(view_camera[0]) + cam_offset_x + shakeX, camera_get_view_y(view_camera[0]) + cam_offset_y + shakeY);

shakeXPrev = shakeX;
shakeYPrev = shakeY;
shakeX = 0;
shakeY = 0;
