for(var i = 0; i < ds_list_size(chunks_loaded); i++)
{
	with(chunks_loaded[| i])
	{
		event_user(2);	
	}
}
