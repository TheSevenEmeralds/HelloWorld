if (pause) exit;
randomize();
var yy = random_range(ah,0);
var pigs = random_range(1,1);
var xx = choose(0,1);
if (xx = 0)
{
    for (var pig = pigs;pig > 0;pig -= 1)
    {
        randomize();
        instance_create(view_xview[0],yy+(random_range(-50,50)),obj_flypig);
    }
}
if (xx = 1)
{
    for (var pig = pigs;pig > 0;pig -= 1)
    {
        randomize();
        instance_create(view_xview[0]+600,yy+(random_range(-50,50)),obj_flypig);
    }
}
