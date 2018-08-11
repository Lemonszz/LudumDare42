if(onTicks > 0)
{
	sprite_index = sFurnaceOn;
	onTicks--;
	progress++;
	if(progress > 300)
	{
		//swap	
	}
	if(age % 10 == 0)
	{
		if(target_xscale == 1.15)
		{
				target_xscale = 1;
				target_yscale = 1;
		}
		else
		{
			target_xscale = 1.15
			target_yscale = 0.85;
		}
	}
}
else
{
	target_xscale = 1;
	target_yscale = 1;
	progress = 0;
	sprite_index = sFurnace;	
}

age++;

event_inherited();