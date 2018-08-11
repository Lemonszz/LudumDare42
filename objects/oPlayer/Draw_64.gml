var _scale = 4;
var _offsetX = 10;
var _offsetY = 10;
var _slotWidth = sprite_get_width(sUi_ItemSlot);

var dX = _offsetX;
for(var i = 0; i < inventory.inventory_size; i++)
{
	var xPos = dX;
	var yPos = _offsetY;
	var spriteIndex = 0;
	var xInc = _slotWidth * _scale;
	if(selected_inventory == i)
	{
		xPos += 10;
		xInc += 20;
		spriteIndex = 1;
	}
	
	draw_sprite_ext(sUi_ItemSlot, spriteIndex, xPos, yPos, _scale, _scale, 0, c_white, 1);
	var item = inventory_get_item(inventory, i);
	if(item != noone && item != undefined)
	{
		draw_sprite_ext(sItems, item, xPos + 40, yPos + 40, _scale, _scale, 0, c_white, 1);	
	}

	dX += xInc;
}