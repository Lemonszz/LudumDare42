if(onTicks > 0)
{
	sprite_index = sFurnaceOn;
	onTicks--;
	progress++;
	if(progress > 300)
	{
		//swap	
	}
	if(age % 40 == 0)
	{
		if(target_xscale == 1.5)
		{
				target_xscale = 1;
				target_yscale = 1;
		}
		else
		{
			target_xscale = 1.5
			target_yscale = 0.5;
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