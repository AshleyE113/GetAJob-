/// @description Insert description here
// You can write your code in this 
x_vel = x_vel < 0 ? max (x_vel, -max_x_vel) : min(x_vel, max_x_vel);

y_vel += grav;

x_movement = round(x_vel);
y_movement = round(y_vel);

for (var i = 0; i < abs(x_movement); i++)
{
	
	if (x+sign(x_vel) >= room_width - sprite_width/2)
	{
		x_vel *= -1;
		
		/*
		if (!audio_is_playing(snd_wall))
		{
			audio_play_sound(snd_wall, 0, 0);	
		}
		*/
	
	} else if (x+sign(x_vel) <= sprite_width/2)
		{
		/*	
		if (!audio_is_playing(snd_wall))
		{
			audio_play_sound(snd_wall, 0, 0);	
		}
		*/
		
		x_vel = -x_vel;	
		
		}
	x += sign(x_vel);
}

var sign_of_y = sign(y_vel);
//While alive
if (!died)
{
	while (y_movement != 0)
	{
		var colliding = false;
		var collide_with_burg = noone;
		var collide_with_paper = noone;
		var collide_with_dollar = noone;
		
		//COLLISON BREAK DOWN 
			if (sign_of_y >= 0) // only check collisions if we're moving down
			{
			//image_index = 0;
				collide_with_burg = instance_place(x, y+ sign_of_y, obj_burger)
				collide_with_paper = instance_place(x, y + sign_of_y, obj_paper);
				collide_with_dollar = instance_place(x,y +sign_of_y, obj_dollar);
			//Burger Collision___________________________________	
				if (collide_with_burg != noone && dying != true)
				{
					if (place_meeting(x,y, collide_with_burg) == false)
					{
						colliding = true;
						instance_destroy(collide_with_burg);
					}
				}//collide w/ burg and dying not true
			//Paper Collision_____________________________________
				if (collide_with_paper != noone && dying != true)
				{
					if (place_meeting(x,y, collide_with_paper) == false)
					{
						colliding = true;
						instance_destroy(collide_with_paper);
					}
				} //Collide w/ Paper
			//Dollar Collision_______________________________________
				if (collide_with_dollar != noone && dying != true)
				{
					if (place_meeting(x,y, collide_with_dollar) == false)
					{
						colliding = true;
						instance_destroy(collide_with_dollar);
					}
				}//Collide w/ Dollar
			}// for sign of y
	
		if (!collide_with_burg)
		{
			y+= sign_of_y;
			y_movement -= sign_of_y;
		}
		else
		{
			y = y + sign_of_y;
			y_vel = jump_vel;

			image_speed = 1;
			image_index = 0;
			break;
		}
		//FREEZES GAME FOR SOME REASON!!!
		//Infinite action must be happening
		/*
		// Paper (runs but is frozen with this)
		if (!collide_with_paper)
		{
			y+= sign_of_y;
			y_movement -= sign_of_y;
		}
		else
		{
			y = y + sign_of_y;
			y_vel = jump_vel;

			image_speed = 1;
			image_index = 0;
			break;
		}
		
		//Dollar (doesn't run at all)
		if (!collide_with_dollar)
		{
			y+= sign_of_y;
			y_movement -= sign_of_y;
		}
		else
		{
			y = y + sign_of_y;
			y_vel = jump_vel;

			image_speed = 1;
			image_index = 0;
			break;
		}
		*/
	}//For while
}//For !died

