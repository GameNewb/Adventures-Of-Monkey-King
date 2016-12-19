///move_state()

if(!place_meeting(x, y+1, obj_solid)) //If there's no solid obj under 1 pixel
{
    vspd += grav; //Add gravity to vertical speed
    
    //Player is in the air
    sprite_index = spr_player_jump; //Change to jump sprite
    image_speed = 0; //Jumping sprite not animated
    image_index = (vspd > 0);
    
    //Control jump height
    if(up_release && vspd < -6) //If up key has been released, and vertical speed is less than 6, then let the player control the jump height
    {
        vspd = -6;
    }
    
    if(attack && jump_attacked == false)
    {
        //Play swing sound
        audio_emitter_pitch(jump_attack_em, random_range(.8, 1.2));
        audio_emitter_gain(jump_attack_em, .2);
        audio_play_sound_on(jump_attack_em, snd_air_swing, false, 3);

        state = jump_attack_state;
    }
} 
else 
{
    vspd = 0;
    
    //Set back to be able to jump attack again
    jump_attacked = false;
    
    //Jumping code
    if(up)
    {
        vspd = -16;
        
        //Play jump sound - sound name, priority, loop
        audio_emitter_pitch(audio_em, random_range(.8, 1.1));
        audio_emitter_gain(audio_em, .2);
        audio_play_sound_on(audio_em, snd_jump, false, 2);
    }
    
    //Player is on the ground
    if(hspd == 0) //If player is not moving
    {
        sprite_index = spr_player_idle;
   
        if(interact && place_meeting(x+30, y, obj_speaker) 
        || interact && place_meeting(x-30, y, obj_speaker) 
        || interact && place_meeting(x, y, obj_speaker)) //If there's a signboard
        {
            //Interaction
            sprite_index = spr_player_idle; //Stop animation
            state = interact_state;
            if(state != player_move_state)
            {
                alarm[2] = .1; //Re-initialize move state
            }
        }
        else if(attack) //Normal attack
        {   
            image_index = 0;
            state = strike_attack_state;
        }else if(thrust_attack)
        {
            image_index = 0;
            state = thrust_attack_state;
        }
    }else { //For moving
        if(interact && place_meeting(x+25, y, obj_speaker)
        || interact && place_meeting(x-25, y, obj_speaker)
        || interact && place_meeting(x, y, obj_speaker)) //If there's a signboard
        {
            sprite_index = spr_player_idle; //Stop animation
            state = interact_state;
            if(state != player_move_state)
            {
                alarm[2] = 1; //Re-initialize move state
            }
        }
        else if(attack) //Stop moving and attack
        {
            image_index = .1; //Set the animation to frame 0
            state = strike_attack_state;
        }else if(thrust_attack)
        {
            image_index = 0;
            state = thrust_attack_state;
        }
        else{
            sprite_index = spr_player_walk;
            image_speed = .6; //Animate at 60% of image speed
        }
    }
}

if(right || left) 
{
    hspd += (right-left)*acc; //If pressing right key, (1-0)
    hspd_dir = right - left; 
    
    if(hspd > spd) hspd = spd; //Cap right speed at 8
    if(hspd < -spd) hspd = -spd; //Cap left speed at -8
} 
else //Friction
{
    apply_friction(acc);
}

//Sprite flipping
if (hspd != 0)
{
    image_xscale = sign(hspd);
}

//Both platform and non platform
platform_player_move(obj_solid);


