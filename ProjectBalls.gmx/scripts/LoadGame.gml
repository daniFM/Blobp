/// Load save

ini_open("Saves.ini");
global.highScore = ini_read_real("Stats","highScore",0);
ini_close();
