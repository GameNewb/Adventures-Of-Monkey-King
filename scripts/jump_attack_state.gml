///jump_attack_state

sprite_index = spr_player_jump_attack;
image_speed = 1;

//Jump attack
if(!place_meeting(x, y+1, obj_solid)) //If there's no solid obj under 1 pixel
{
    //Fall a little faster
    vspd += 2;
    
    if(vspd >= 0 && jump_attacked == false)
    {
        //Create jump damage instance
        if(image_xscale >= 0) //Facing right
        {
            var damage = instance_create(obj_player.x+8, obj_player.y, obj_player_jump_damage);
            damage.creator = id;
            jump_attacked = true;
        }
        else if(image_xscale = -1) //Facing left
        {
            var damage = instance_create(obj_player.x-30, obj_player.y, obj_player_jump_damage); //Equal to the id of the damage we created
            damage.creator = id; //The id is the player
            jump_attacked = true;
        }
    }
}


//Sprite flipping
if (hspd != 0)
{
    image_xscale = sign(hspd);
}

