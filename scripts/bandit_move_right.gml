///bird_move_right_state

var wall_at_right = place_meeting(x+1, y, obj_solid);
var ledge_at_right = !position_meeting(bbox_right+1, bbox_bottom+1, obj_solid);

if(wall_at_right || ledge_at_right)
{
    state = bandit_move_left;
}

//Rotate sprite
image_xscale = 1;

//Move the bandit
x += 1;
