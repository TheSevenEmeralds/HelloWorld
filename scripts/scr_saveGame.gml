instance_create(x,y,obj_saving);
if (file_exists("saveFF.ini")) file_delete("saveFF.ini");
directory_create("%localappdata%\food_fight___");
ini_open("saveFF.ini");
var Topfood = topFood;
ini_write_real("game","topfood",Topfood);
var topTime = 0;
ini_write_real("game","time",topTime);
ini_close();
