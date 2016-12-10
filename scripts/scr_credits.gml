///Menu script

switch(mpos)
{
    case 0:
        audio_stop_sound(snd_rainbows);
        instance_create(x, y, obj_restart_fade);
        instance_destroy();
        break;
    case 1:
        game_end();
        break;
}
