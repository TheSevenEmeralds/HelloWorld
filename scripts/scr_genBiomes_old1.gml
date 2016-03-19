randomize();
ah = round(ah/32)*32;
var yy = ah;
biome = choose(1,2,3,4,5);
//1 = plains
//2 = stone jagged
//3 = snow
//4 = jungle
//5 = desert
biome_range = choose(320,960,1280);
x = x+biome_range;
if (obj_gen.txx = 0)
{
    x = 0;
}
if (biome = 1)
{
for (var xx = x; xx <= (x+biome_range); xx += 32)
{
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
    if (xx = (txx+biome_range)) && (x < 4000)
    {
        x += 32;
        scr_genBiomes();
    }
    
}
}
if (biome = 2)
{
for (var xx = x; xx <= (x+biome_range); xx += 32)
{
    obj_gen.txx += 32;
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
    if (xx = (x+biome_range)) && (txx < 4000)
    {
        x += 32;
        scr_genBiomes();
    }
}
}
if (biome = 3)
{
for (var xx = x; xx <= (x+biome_range); xx += 32)
{
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
    if (xx = (x+biome_range)) && (txx < 4000)
    {
        x += 32;
        scr_genBiomes();
    }
}
}
if (biome = 4)
{
for (var xx = x; xx <= (x+biome_range); xx += 32)
{
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
    if (xx =(x+biome_range)) && (txx < 4000)
    {
        x += 32;
        scr_genBiomes();
    }
}
}
if (biome = 5)
{
for (var xx = x; xx <= (x+biome_range); xx += 32)
{
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
    if (xx = (x+biome_range)) && (txx < 4000)
    {
        x += 32;
        scr_genBiomes();
    }
}
}
