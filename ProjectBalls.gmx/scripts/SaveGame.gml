/// Save Highscore

ini_open("Saves.ini");
ini_write_real("Stats","highScore",global.highScore);
ini_close();
