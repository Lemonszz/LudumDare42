if(changed)
{
	var _grid = ds_grid_write(tiles);
	var write = base64_encode(_grid);
	
	var f = file_text_open_write(string(posX) + "-" + string(posY) + ".ch");
	file_text_write_string(f, write);
	file_text_close(f);
}

var xx = posX * CHUNK_SIZE;
var yy = posY * CHUNK_SIZE;

mp_grid_clear_rectangle(oWorld.world_path, xx, yy, xx + CHUNK_SIZE, yy + CHUNK_SIZE);
