///move(collision_object)
mask_index = spr_cloud;

// Horizontal Collisions
if (place_meeting(x+hspd, y, obj_solid)) {
    while (!place_meeting(x+sign(hspd), y, obj_solid)) {
        x += sign(hspd);
    }
    hspd = 0;
    
    dir *= -1;
}
x += hspd;

if(instance_exists(obj_player))
{
    if(round(obj_player.y + (obj_player.sprite_height/2)) > y) || (obj_player.down)
    { 
        mask_index = -1;
    }
    else 
    {
        mask_index = spr_cloud_mask;
        if(place_meeting(x, y-1, obj_player)) //1 pixel above the platform
        {
            obj_player.hspd_carry = hspd;
        }
    }
}
