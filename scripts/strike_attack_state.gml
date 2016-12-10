///attack_state

image_speed = .9;
sprite_index = spr_player_strike_attack;

//Check frame of animation and check whether we attacked or not
if(image_index >= 2 && attacked == false)
{
    //Play swing sound
    audio_emitter_pitch(audio_em, random_range(.6, 1.4));
    audio_emitter_gain(audio_em, .3);
    audio_play_sound_on(audio_em, snd_clean_swing, false, 3);
    
    //Create damage instance
    if(image_xscale >= 0) //Facing right
    {
        var damage = instance_create(x, y, obj_player_damage);
        damage.creator = id;
        attacked = true;
    }
    else if(image_xscale = -1) //Facing left
    {
        var damage = instance_create(x-30, y, obj_player_damage); //Equal to the id of the damage we created
        damage.creator = id; //The id is the player
        attacked = true;  
    }
}





