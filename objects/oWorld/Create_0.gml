randomise();
size = WORLD_SIZE_CHUNKS;

chunks = ds_grid_create(size, size);
ds_grid_set_region(chunks, 0, 0, size, size, noone);
chunks_loaded = ds_list_create();

world_noise = gpu_noise_create_ext(1, random(99999), (size * CHUNK_TILE_SIZE) / 2, (size * CHUNK_TILE_SIZE) / 2, 1, 100.0, 1.0);
ore_noise = gpu_noise_create_ext(2, random(99999), (size * CHUNK_TILE_SIZE) / 2, (size * CHUNK_TILE_SIZE) / 2, 1, 32, 50);

camera_set_view_pos(view_camera[0], (room_width / 2) - (camera_get_view_width(view_camera[0]) / 2), (room_height / 2) - (camera_get_view_height(view_camera[0]) / 2))

world_path = mp_grid_create(0, 0, room_width / TILE_SIZE, room_height / TILE_SIZE, TILE_SIZE, TILE_SIZE);

first_step = true;