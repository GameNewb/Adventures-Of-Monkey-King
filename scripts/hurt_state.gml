///hurt_state()

//Set the sprite
sprite_index = spr_player_hurt;

if(hspd != 0) image_xscale = sign(hspd);

//Apply gravity
if(!place_meeting(x, y+1, obj_solid))
{
    vspd += grav;   
}
else
{
    vspd = 0;
    
    //Use friction
    apply_friction(acc);
}

direction_knockback(obj_solid);

//Change back to the move state
if(hspd == 0 && vspd == 0 || vspd >= 0 || hspd >= 0)
{
    image_blend = c_white;
    state = player_move_state;
}
