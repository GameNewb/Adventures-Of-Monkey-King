///bird_return_state

var dir = point_direction(x, y, -x, y);
hspd = lengthdir_x(spd, dir);
vspd = lengthdir_y(spd, dir);

if(hspd != 0)
{
    image_xscale = sign(hspd);
}

move(obj_solid);
