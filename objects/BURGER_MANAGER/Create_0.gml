/// @description Insert description here
// You can write your code in this editor
current_burg_num = 0;

min_burg_num = 20;

max_burg_number = 30;

//Cloud spawn (Play with numbers
//X

var burger_width = sprite_get_width(spr_burgPlat);

var x_buffer = burger_width/2 //makes a margin for the clouds

var x_spacing = 1;

BURGER_SPAWN_ARRAY_X = [];

var x_index = 0;

while (x_buffer + (burger_width * x_spacing * x_index) < room_width)
{
BURGER_SPAWN_ARRAY_X[x_index] = x_buffer + (burger_width * x_spacing * x_index);
x_index++;
}

//Y

var burger_height = sprite_get_height(spr_burgPlat);

var y_buffer = burger_height*2 //makes a margin for the clouds

var y_spacing = 2;

BURGER_SPAWN_ARRAY_Y = [];

var y_index = 0;

while (y_buffer + (burger_height * y_spacing * y_index) < room_height-200)
{
BURGER_SPAWN_ARRAY_Y[y_index] = y_buffer + (burger_height * y_spacing * y_index);
y_index++;
}

burg_respawn = 3; 

repeat (max_burg_number)
{	
	var column = irandom_range(0, array_length_1d(BURGER_SPAWN_ARRAY_X) - 1);
	var row = irandom_range(0, array_length_1d(BURGER_SPAWN_ARRAY_Y) - 1);

	var spawn_x = BURGER_SPAWN_ARRAY_X[column];
	var spawn_y = BURGER_SPAWN_ARRAY_Y[row];
	var new_clouds = instance_create_layer(spawn_x, spawn_y, "Platforms", obj_burger);
}