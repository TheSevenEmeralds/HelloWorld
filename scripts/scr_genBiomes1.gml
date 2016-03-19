randomize();
ah = round(ah/32)*32;
var yy = ah;
biome = choose(1,2,3,4,5);
//1 = plains
//2 = stone jagged
//3 = snow
//4 = jungle
//5 = desert
obj_moe.biome1 = biome;
biome_range = 2016;
//x = x+biome_range;
if (biome = 1)
{
for (var xx = x; xx <= biome_range; xx += 32)
{
    
    if (ah >= 768)
    {
        ah -= 32; //32
    }
    obj_gen.txx += 32;
    instance_create(xx,ah,obj_dirt);
    yy = ah;
    yy += 32;
    for (yy = yy;yy < 768;yy += 32)
    {
        instance_create(xx,yy,obj_dirt);
    }
    if (ah < 768)
    {
        ah += choose(-32,0,0,32);
    }
    if (xx = biome_range)
    {
        ah1 = ah;
        scr_genBiomes1();
    }
}
}
if (biome = 2)
{
for (var xx = x; xx <= biome_range; xx += 32)
{
    if (ah >= 768)
    {
        ah -= 32; //32
    }
    //obj_gen.txx += 32;
    instance_create(xx,ah,obj_stone);
    yy = ah;
    yy += 32;
    for (yy = yy;yy < 768;yy += 32)
    {
        instance_create(xx,yy,obj_stone);
    }
    if (ah < 768)
    {
        ah += choose(-64,64,-32,32);
    }
    if (xx = biome_range)
    {
        ah1 = ah;
        scr_genBiomes1();
    }
}
}
if (biome = 3)
{
for (var xx = x; xx <= biome_range; xx += 32)
{
    if (ah >= 768)
    {
        ah -= 32; //32
    }
    obj_gen.txx += 32;
    instance_create(xx,ah,obj_snow);
    yy = ah;
    yy += 32;
    for (yy = yy;yy < 768;yy += 32)
    {
        instance_create(xx,yy,obj_snow);
    }
    if (ah < 768)
    {
        ah += choose(-32,0,0,32);
    }
    if (xx = biome_range)
    {
        ah1 = ah;
        scr_genBiomes1();
    }
}
}
if (biome = 4)
{
for (var xx = x; xx <= biome_range; xx += 32)
{
    randomize();
    if (jt) && (choose(0,1,2,3,4,5) = 3)
    {
        jt = 0;
        //instance_create(xx,ah-32,obj_jungleTemple);
    }
    if (ah >= 768)
    {
        ah -= 32; //32
    }
    obj_gen.txx += 32;
    instance_create(xx,ah,obj_jungleDirt);
    yy = ah;
    yy += 32;
    for (yy = yy;yy < 768;yy += 32)
    {
        instance_create(xx,yy,obj_jungleDirt);
    }
    if (ah < 768)
    {
        ah += choose(-32,0,0,32,32,-32);
    }
    if (xx = biome_range)
    {
        ah1 = ah;
        scr_genBiomes1();
    }
}
}
if (biome = 5)
{
for (var xx = x; xx <= biome_range; xx += 32)
{
    if (ah >= 768)
    {
        ah -= 32; //32
    }
    obj_gen.txx += 32;
    instance_create(xx,ah,obj_sand);
    yy = ah;
    yy += 32;
    for (yy = yy;yy < 768;yy += 32)
    {
        instance_create(xx,yy,obj_sand);
    }
    if (ah < 768)
    {
        ah += choose(0,0,0,-32,0,0,0,0,32,0,0,0);
    }
    if (xx = biome_range)
    {
        ah1 = ah;
        scr_genBiomes1();
    }
}
}
