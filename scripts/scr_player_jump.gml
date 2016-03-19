scr_player_inputs();

if (ysp < -9) && (keyboard_check_released(key_jump))
{
    ysp = -9;
}

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
    facing = -1;
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
    facing = 1;
}
else 
{
    xsp = xsp-min(abs(xsp), dec)*sign(xsp);
}

if (place_meeting(x,y,obj_water))
{
    state = 3;
}

if (place_meeting(x,y+1,obj_wall))
{
    state = 1;
}

if (facing = -1)
{
    sprite_index = spr_moe_jump_l;
}
if (facing = 1)
{
    sprite_index = spr_moe_jump_r;
}

ysp += grv;

//mask_index = mask2;

scr_player_coll();
