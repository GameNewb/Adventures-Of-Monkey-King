///Menu script

switch(mpos)
{
    case 0:
        instance_create(x, y, obj_fade);
        audio_stop_sound(snd_rainbows);
        instance_destroy();
        break;
    case 1:
        game_end();
        break;
}
