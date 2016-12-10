///apply_friction(amount)
var amount = 2 //argument[0]; //Acceleration

if(hspd != 0) //If we're moving
{
    if(abs(hspd)-amount > 0) //Check to see if we're going too far from origin, if not, move
    {
        hspd -= amount*image_xscale;
    }
    else //If we're going to go too far, then apply 0
    {
        hspd = 0;
    }
}
