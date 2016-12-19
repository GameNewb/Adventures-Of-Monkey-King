///bandit_idle

//Be idle for 5 seconds
sprite_index = spr_bandit_idle;
image_speed = .2;

if(instance_exists(obj_player))
{
    if(dis < sight) //If we're near the player and the alarm is 0
    {
        //Make sure we face the player
        if(obj_player.x != x)
        {
            image_xscale = sign(obj_player.x-x); //Return 1, face the right direction
        }
        
        state = bandit_chase_state;
    }
}

