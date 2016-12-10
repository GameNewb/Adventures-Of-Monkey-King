///take_damage(enemy coordinates, if falling)

var above_enemy = y < other.y + vspd; //other inside collision refers to the instance you're colliding with (i.e. collide with bat, other = bat)
var falling = vspd > 0;

// Take damage
if(invincible == false)//state != hurt_state)
{
    //1 is normal
    /*
    audio_emitter_pitch(audio_em, 1.6); //Pitch
    audio_emitter_gain(audio_em, 1.4); //Volume
    audio_play_sound_on(audio_em, snd_ouch, false, 8);
    */
    image_blend = make_colour_rgb(220, 150, 150);
    
    state = bird_chase_state;

    //2 seconds invincibility 
    invincible = true;
    alarm[0] = 60;
    alarm[1] = 1;
}
