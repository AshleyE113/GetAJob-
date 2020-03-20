/// @description Insert description here
// You can write your code in this editor
if (keyboard_check(ord("A"))) 
{
	x-= moveSpeed;	
}
if (keyboard_check(ord("D"))) 
{
	x += moveSpeed;
}

// Inherit the parent event, run the logic defined in obj_player's Step Event now that we have our input
event_inherited();