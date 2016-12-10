///take_damage(enemy coordinates, if falling)

var above_enemy = y < other.y + vspd; //other inside collision refers to the instance you're colliding with (i.e. collide with bat, other = bat)
var falling = vspd > 0;

// Take damage
if(invincible == false && knockout == false)
{
    //1 is normal
    /*
    audio_emitter_pitch(audio_em, 1.6); //Pitch
    audio_emitter_gain(audio_em, 1.4); //Volume
    audio_play_sound_on(audio_em, snd_ouch, false, 8);
    */
    image_blend = make_colour_rgb(220, 150, 150);

    if(above_enemy || falling) //If we're falling or in the air
    {
        hspd = sign(x - other.x)*4; //Reduce falling distance
    }
    else //If we're not falling or in the air,
    {
        hspd = sign(x - other.x)*9; //Get the direction on where we are, sign(x-other.x)*8
    }
    
    state = hurt_state;
    
    player_move_state(obj_solid);
    
    if(instance_exists(obj_player_stats))
    {
        //Subtract from hp
        obj_player_stats.hp -= 1;
        
        //Player is knocked out, game over
        if(obj_player_stats.hp <= 0)
        {
            knockout = true;
            image_blend = c_white;
            state = knockout_state;
        }
    }
    
    //2 seconds invincibility, prevents knockout spasm/loop
    if(knockout == false)
    {
        invincible = true;
        alarm[0] = 60;
        alarm[1] = 1;
    }
}
