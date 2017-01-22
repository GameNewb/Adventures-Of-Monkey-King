///bandit_death

image_xscale = sign(hspd);
sprite_index = spr_bandit_death;

if(sprite_index == spr_bandit_death && floor(image_index) == image_number - 1)
{
    image_speed = 0;
    image_index = 7;
}




