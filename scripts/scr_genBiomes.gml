randomize();

sh = random_range(0,room_height);

sh = round(sh/32)*32;

biome = random_range(1,5);

/*
1 = plains
2 = stone jagged
3 = snow
4 = jungle
5 = desert
*/

biome_width = random_range(50,200);

biome_width = round(sh/32)*32;

for (xx = 0; xx < biome_width; xx += 32)
{
    if (biome = 1)
    {
        instance_create(xx,sh,obj_dirt);
        sh += choose(-32,0,0,32);
    }
    if (biome = 2)
    {
        instance_create(xx,sh,obj_stone);
        sh += choose(-64,64,-32,32);
    }
    if (biome = 3)
    {
        instance_create(xx,sh,obj_snow);
        sh += choose(-32,0,0,32);
    }
    if (biome = 4)
    {
        instance_create(xx,sh,obj_jungleDirt);
        sh += choose(-32,0,0,32,32,-32);
    }
    if (biome = 5)
    {
        instance_create(xx,sh,obj_sand);
        sh += choose(0,0,0,-32,0,0,0,0,32,0,0,0);
    }
    
    if (xx = biome_width)
    {
        biome = random_range(1,5);
        
        biome_width = random_range(50,200);

        biome_width = round(sh/32)*32;
    }
    
}


