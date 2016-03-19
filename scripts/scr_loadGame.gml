if (file_exists("saveFF.ini"))
{
    ini_open("saveFF.ini");
    topFood = ini_read_real("game","topfood",0);
    ini_close();
}
