///bird_move_left_state

var wall_at_left = place_meeting(x-1, y, obj_solid);
var ledge_at_left = !position_meeting(bbox_left-1, bbox_bottom+1, obj_solid);

if(instance_exists(obj_player))
{
    if(dis < sight) //If we're near the player
    {
        //Make sure we face the player
        if(obj_player.x != x)
        {
            image_xscale = sign(obj_player.x-x); //Return 1, face the right direction
        }
        
        state = bandit_chase_state;
    }
    else
    {
        image_speed = .4;
        if(wall_at_left || ledge_at_left)
        {
            state = bandit_move_right;
        }
        
        //Rotate sprite
        image_xscale = -1;
        
        //Move the bandit
        x -= 1;
    }
}
