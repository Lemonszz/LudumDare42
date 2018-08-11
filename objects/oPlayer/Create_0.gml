event_inherited();

draw_xscale = 1.5;
draw_yscale = 0.5;

inventory = create_inventory(6);
selected_inventory = 0;

inventory_add_item(inventory, Items.PICKAXE);

pick_use_cooldown_max = 20;
pick_use_cooldown = 0;