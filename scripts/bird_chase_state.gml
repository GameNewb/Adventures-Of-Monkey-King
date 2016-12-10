///bird_chase_state

//If the bird spots the player, chase
var dir = point_direction(x, y, obj_player.x, obj_player.y);
hspd = lengthdir_x(spd, dir);
vspd = lengthdir_y(spd, dir);
absolute = 1;

if(hp <= 0)
{
    bird_falling_state();
}
else
{
    if(hspd != 0)
    {
        image_xscale = sign(hspd);
    }
    move(obj_solid);
}



