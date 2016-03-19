if (place_meeting(x+xsp,y,obj_wall))
{
    while (!place_meeting(x+sign(xsp),y,obj_wall))
    {
        x += sign(xsp);
    }
    xsp = 0;
}
x += xsp;
if (place_meeting(x,y+ysp,obj_wall))
{
    while (!place_meeting(x,y+sign(ysp),obj_wall))
    {
        y += sign(ysp);
    }
    ysp = 0;
}
y += ysp;
