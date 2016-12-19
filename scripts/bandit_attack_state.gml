///bandit_attack_state

image_speed = .425;
sprite_index = spr_bandit_attack;

if(image_index >= 4 && attacked == false)
{
    //Create damage instance
    if(image_xscale >= 0) //Facing right
    {
        var damage = instance_create(x, y, obj_bandit_damage);
        damage.creator = id;
        attacked = true;
    }
    else if(image_xscale = -1) //Facing left
    {
        var damage = instance_create(x-24, y, obj_bandit_damage); //Equal to the id of the damage we created
        damage.creator = id; //The id is the player
        attacked = true;  
    }
}


