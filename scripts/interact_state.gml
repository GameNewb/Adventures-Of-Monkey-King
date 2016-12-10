///interact_state

//Check whether we attacked or not and make sure we're not jumping
if(interaction == false)
{
    if(image_xscale >= 0) //Facing right
    {
        var damage = instance_create(x, y, obj_player_interact);
        damage.creator = id;
        interaction = true;
    }
    else if(image_xscale = -1) //Facing left
    {
        var damage = instance_create(x-20, y, obj_player_interact); //Equal to the id of the damage we created
        damage.creator = id; //The id is the player
        interaction = true;  
    }
}
