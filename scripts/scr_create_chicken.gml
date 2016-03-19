if (pause) exit;
randomize();
var yy = random_range(ah,0);
var chic = random_range(1,1);
var xx = choose(0,1);
if (xx = 0)
{
    for (var chii = chic;chii > 0;chii -= 1)
    {
        randomize();
        instance_create(view_xview[0],yy+(random_range(-50,50)),obj_chicken);
    }
}
if (xx = 1)
{
    for (var chii = chic;chii > 0;chii -= 1)
    {
        randomize();
        instance_create(view_xview[0]+600,yy+(random_range(-50,50)),obj_chicken);
    }
}
