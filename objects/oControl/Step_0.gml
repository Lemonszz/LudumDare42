if(keyboard_check_pressed(vk_enter))
{
	world_explode(mouse_x, mouse_y, 2);
}

if(keyboard_check_pressed(vk_alt))
	instance_create_depth(mouse_x, mouse_y, -2, oMinerBot);

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
	
camera_set_view_pos(view_camera[0], camera_get_view_x(view_camera[0]) + cam_offset_x, camera_get_view_y(view_camera[0]) + cam_offset_y);

