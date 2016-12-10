///direction_knockbackcollision_object)

var collision_object = argument0;

// Horizontal Collisions
if (place_meeting(x+hspd, y, collision_object)) 
{
    //While we're not close to the wall
    while (!place_meeting(x+sign(hspd), y, collision_object)) 
    {
        x += sign(hspd);
    }
    hspd = -(vspd/16);
}
x += hspd;

// Vertical Collisions
if (place_meeting(x, y+vspd, collision_object)) 
{
    while (!place_meeting(x, y+sign(vspd), collision_object)) 
    {
        y += sign(vspd);
    }
    vspd = -(hspd/16);
    if(abs(vspd) < 0) vspd = 0; //Don't get stuck with tiny values
}
y += vspd;

