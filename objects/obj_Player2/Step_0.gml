/// @description Insert description here
// You can write your code in this editor
if (keyboard_check(vk_left)) 
{
	x_vel-= moveSpeed;	
	show_debug_message("Move");
}
if (keyboard_check(vk_right)) 
{
	x_vel+= moveSpeed;
}

// Inherit the parent event, run the logic defined in obj_player's Step Event now that we have our input
event_inherited();
