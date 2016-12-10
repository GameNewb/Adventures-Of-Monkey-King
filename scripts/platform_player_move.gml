///platform_player_move(collision_object)
//Used for platform movement 

var collision_object = argument0;

var hspd_final = hspd + hspd_carry;
hspd_carry = 0; //Prevents further/additional movement while on platform
    
// Horizontal Collisions
if (place_meeting(x+hspd_final, y, collision_object)) 
{
    while (!place_meeting(x+sign(hspd_final), y, collision_object)) 
    {
        x += sign(hspd_final);
    }
    hspd_final = 0;
    hspd = 0;
}
x += hspd_final;

// Vertical Collisions
if (place_meeting(x, y+vspd, collision_object)) {
    while (!place_meeting(x, y+sign(vspd), collision_object)) {
        y += sign(vspd);
    }
    vspd = 0;
}
y += vspd;

