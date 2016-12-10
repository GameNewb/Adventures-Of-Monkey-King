///bird_falling_state()

hspd = 0;
vspd = 5;

if(place_meeting(x, y+vspd, obj_float))
{
    while(!place_meeting(x, y+sign(vspd), obj_float))
    {
        y += vspd;
    }
}

y += vspd;
