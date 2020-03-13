/// @description Insert description here
// You can write your code in this editor
current_burg_num = instance_number(obj_burger);

var target_num_of_burgers = 0;
if (current_burg_num == 0)
{
	target_num_of_burgers = max_burg_number;
}
else
{
	target_num_of_burgers = min_burg_num;	
}

//Spawns between our min and max vals

if (current_burg_num < max_burg_number)
{
burg_respawn--;

	if (burg_respawn == 0)
	{
	var column = irandom_range(0, array_length_1d(BURGER_SPAWN_ARRAY_X) - 1);
	var row = irandom_range(0, array_length_1d(BURGER_SPAWN_ARRAY_Y) - 1);

	var spawn_x = BURGER_SPAWN_ARRAY_X[column];
	var spawn_y = BURGER_SPAWN_ARRAY_Y[row];
	var new_clouds = instance_create_layer(spawn_x, spawn_y, "Platforms", obj_burger);
		current_burg_num+=1;
		burg_respawn = 2;	
	}


}
