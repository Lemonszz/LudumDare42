var range = 2;

var cam_mid_x = floor((CHUNK_TILE_SIZE / 2) + camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 2);
var cam_mid_y = floor((CHUNK_TILE_SIZE / 2) +  camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) / 2);

var min_x = floor(max(0, (cam_mid_x / CHUNK_TILE_SIZE) - range));
var min_y = floor(max(0, (cam_mid_y / CHUNK_TILE_SIZE) - range));
var max_x = floor(min(size, (cam_mid_x / CHUNK_TILE_SIZE) + range));
var max_y = floor(min(size, (cam_mid_y / CHUNK_TILE_SIZE) + range));

for(var i = 0; i < ds_list_size(chunks_loaded); i++)
{
	var chunk = chunks_loaded[| i];
	var cpX = chunk.posX;
	var cpY = chunk.posY;
	
	if(cpX >= min_x && cpX <= max_x && cpY >= min_y && cpY <= max_y)
	{
		with(chunk)
			event_user(0);
	}
	else
	{
		ds_list_delete(chunks_loaded, i);
		chunks[# cpX, cpY] = noone; 
		
		with(chunk)
			instance_destroy();
	}
}

for(var xx = min_x; xx < max_x; xx++)
{
	for(var yy = min_y; yy < max_y; yy++)
	{
		if(chunks[# xx, yy] == noone)
		{
			if(file_exists(string(xx) + "-" + string(yy) + ".ch"))
			{
				var f = file_text_open_read(string(xx) + "-" + string(yy) + ".ch");
				var txt = file_text_read_string(f);
				var decode = base64_decode(txt);
				
				file_text_close(f);
				
				var nC =  instance_create_depth(0, 0, 0, oChunk);
				ds_grid_read(nC.tiles, decode);
				nC.changed = false;
				nC.posX = xx;
				nC.posY = yy;
				
				chunks[# xx, yy] = nC;
				ds_list_add(chunks_loaded, nC);
			
				for(var tx = 0; tx < CHUNK_SIZE; tx++)
				{
					for(var ty = 0; ty < CHUNK_SIZE; ty++)
					{
						var t = nC.tiles[# tx, ty];
						if(t != 0)
						{
							mp_grid_add_cell(world_path, (xx * CHUNK_SIZE) + tx, (yy * CHUNK_SIZE) + ty);
						}
					}
				}
			}
			else
			{
				var nC = instance_create_depth(0, 0, 0, oChunk);
				nC.changed = true;
				nC.posX = xx;
				nC.posY = yy;
				ds_grid_set_region(nC.tiles, 0, 0, CHUNK_SIZE, CHUNK_SIZE, 1);
			
				chunks[# xx, yy] = nC;
				ds_list_add(chunks_loaded, nC);
				
				for(var tx = 0; tx < CHUNK_SIZE; tx++)
				{
					for(var ty = 0; ty < CHUNK_SIZE; ty++)
					{
						var t = nC.tiles[# tx, ty];
						if(t != 0)
						{
							mp_grid_add_cell(world_path, (xx * CHUNK_SIZE) + tx, (yy * CHUNK_SIZE) + ty);
						}
					}
				}
			}
		}
	}
}


if(first_step)
{
	first_step = false
	var eX = (room_width / 2);
	var eY = (room_height / 2);
	
	world_explode(eX, eY, 3);
	instance_create_depth(eX, eY, 1, oPlayer);
	
}