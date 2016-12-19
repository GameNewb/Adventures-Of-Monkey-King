///move(collision_object)

var collision_object = argument0;
var wall_at_right = place_meeting(x+1, y, obj_solid);
var ledge_at_right = !position_meeting(bbox_right+1, bbox_bottom+1, obj_solid);
var wall_at_left = place_meeting(x-1, y, obj_solid);
var ledge_at_left = !position_meeting(bbox_left-1, bbox_bottom+1, obj_solid);


//If bandit hits a ledge or wall and player is not within distance, change state
if(wall_at_right || ledge_at_right || wall_at_left || ledge_at_left)
{
    //If player is not near anymore, go back to normal state
    if(dis > sight)
    {    
        state = choose(bandit_move_left, bandit_move_right);
    }
}
else
{
    //If we're close to player, stop and attack
    if(dis >= 6 && dis <= 8)
    {
        state = bandit_attack_state;
    }
    else
    {
        // Horizontal Collisions
        if (place_meeting(x+hspd, y, collision_object)) {
            while (!place_meeting(x+sign(hspd), y, collision_object)) {
                x += sign(hspd) + 12;
            }
            hspd = 0;
        }
        x += hspd;
        
        // Vertical Collisions
        if (place_meeting(x, y+vspd, collision_object)) {
            while (!place_meeting(x, y+sign(vspd), collision_object)) {
                y += sign(vspd);
            }
            vspd = 0;
        }
    }
    
    
}


