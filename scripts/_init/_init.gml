#macro CHUNK_SIZE 10
#macro TILE_SIZE 24
#macro CHUNK_TILE_SIZE 240
#macro WORLD_SIZE_CHUNKS 100


enum Items{
	PICKAXE,
	STONE,
	COAL,
	GOLD_ORE,
	IRON_ORE,
	FURNACE
}

enum Blocks{
	AIR,
	STONE,
	COAL,
	GOLD,
	IRON
}

global.crafting = ds_list_create();
ds_list_add(global.crafting, [Items.FURNACE, [Items.STONE, Items.STONE, Items.STONE, Items.STONE, Items.STONE]]);