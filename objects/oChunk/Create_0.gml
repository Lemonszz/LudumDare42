posX = 0;
posY = 0;

redraw = true;
changed = false;

chunk_surf = surface_create(CHUNK_TILE_SIZE + CHUNK_DRAW_OFFSET, CHUNK_TILE_SIZE + CHUNK_DRAW_OFFSET);

tiles = ds_grid_create(CHUNK_SIZE, CHUNK_SIZE);
