scr_player_inputs();

if (key_left)
{
    if (xsp > 0)
    {
        xsp -= dec;
    }
    else if (xsp > ~top)
    {
        xsp -= acc;
    }
}
else if (key_right)
{
    if (xsp < 0)
    {
        xsp += dec;
    }
    else if (xsp < top)
    {
        xsp += acc;
    }
}
else 
{
    xsp = xsp-min(abs(xsp), dec)*sign(xsp);
}

if (xsp = 0)
{
    if (facing = 1)
    {
        sprite_index = spr_moe_stand_r;
    }
    if (facing = -1)
    {
        sprite_index = spr_moe_stand_l;
    }
}
if (xsp > 0)
{
    facing = 1;
    sprite_index = spr_moe_walk_r;
}

if (xsp < 0)
{
    facing = -1;
    sprite_index = spr_moe_walk_l;
}


if (place_meeting(x,y+5,obj_wall))
{
    if (key_jump)
    {
        ysp -= jmp;
        state = 2;
        if (place_meeting(x,y,obj_wall))
        {
            y -= 64;
        }
    }
}

if (place_meeting(x,y,obj_water))
{
    state = 3;
}

ysp += grv;

scr_player_coll();

