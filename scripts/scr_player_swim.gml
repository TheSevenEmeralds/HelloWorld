scr_player_inputs();

if (key_left)
{
    if (xsp > 0)
    {
        xsp -= dec/2;
    }
    else if (xsp > ~top)
    {
        xsp -= (acc/2);
    }
}
else if (key_right)
{
    if (xsp < 0)
    {
        xsp += dec/2;
    }
    else if (xsp < top)
    {
        xsp += (acc/2);
    }
}
else 
{
    xsp = xsp-min(abs(xsp), acc)*sign(xsp);
}

if (xsp > 0)
{
    facing = 1;
    sprite_index = spr_moe_swim_r;
}
if (xsp < 0)
{
    facing = -1;
    sprite_index = spr_moe_swim_l;
}
if (facing = 1)
{
    sprite_index = spr_moe_swim_r;
}
if (facing = -1)
{
    sprite_index = spr_moe_swim_l;
}

if (place_meeting(x,y,obj_water))
{
    if (key_jump)
    {
        ysp -= 1;
    }
}
else
{
    ysp -= jmp/2;
    state = 2;
}

ysp += grv/2;

//mask_index = mask1;

scr_player_coll();


