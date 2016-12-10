///bird_flying_state

var dir = point_direction(x, y, x, y);
hspd = lengthdir_x(spd, dir);
vspd = lengthdir_y(spd, dir);
absolute = 1;

//Face the right direction
if(hspd != 0)
{
    image_xscale = sign(hspd);
}
    
//Make the object move
move(obj_solid);



