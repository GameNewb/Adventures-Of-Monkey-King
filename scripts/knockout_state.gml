///knockout_state

image_xscale = sign(hspd);
sprite_index = spr_player_ko;

if(sprite_index == spr_player_ko && floor(image_index) == image_number - 1)
{
    image_speed = 0;
    image_index = 17;
}
