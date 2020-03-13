/// @description Insert description here
// You can write your code in this 
x_vel = x_vel < 0 ? max (x_vel, -max_x_vel) : min(x_vel, max_x_vel);

y_vel += grav;

for (var i = 0; i < abs(x_movement); i++)
{
	
	if (x+sign(x_vel) >= room_width - sprite_width/2)
	{
		x_vel *= -1;
		
		if (!audio_is_playing(snd_wall))
		{
			audio_play_sound(snd_wall, 0, 0);	
		}
	
	} else if (x+sign(x_vel) <= sprite_width/2)
		{
			
		if (!audio_is_playing(snd_wall))
		{
			audio_play_sound(snd_wall, 0, 0);	
		}
		
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
		//COLLISON BREAK DOWN 
		if (sign_of_y >= 0) // only check collisions if we're moving down
		{
			//image_index = 0;
			collide_with_burg = instance_place(x, y+ sign_of_y, obj_burger)
			
			if (collide_with_burg != noone && dying != true)
			{
				colliding = true;
				instance_destroy(collide_with_burg);
			}//collide w/ burg and dying not true
		}// for sign of y
	}//For while
} //For !died