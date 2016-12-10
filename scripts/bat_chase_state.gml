///bat_chase_state

if(instance_exists(obj_player))
{
    var dir = point_direction(x, y, obj_player.x, obj_player.y);
    hspd = lengthdir_x(spd, dir);
    vspd = lengthdir_y(spd, dir);
    
    //Change to flying sprite
    sprite_index = spr_bat_fly;
    
    //Face the right direction
    if(hspd != 0)
    {
        image_xscale = sign(hspd);
    }
    
    //Movement
    move(obj_solid);
}
