///bandit_chase_state

//If the bandit spots the player, chase

sprite_index = spr_bandit_walk;
image_speed = .5;
var dir = point_direction(x, y, obj_player.x, obj_player.y);
hspd = lengthdir_x(spd, dir);
vspd = lengthdir_y(spd, dir);
absolute = 1;

if(hspd != 0)
{
    image_xscale = sign(hspd);
    
    bandit_move(obj_solid)
}
