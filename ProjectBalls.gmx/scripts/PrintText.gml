// Argument0 -> type of parragraph => h1, h2, points
// Argument1 -> halign => left, center, right
// Argument2 -> x_position
// Argument3 -> y_position
// Argument4 -> text

draw_set_colour(c_white);

switch(argument0){
    case "h1":
        draw_set_font(fnt_h1);
        break;
    case "h2":
        draw_set_font(fnt_h2);
        break;
    case "points":
        draw_set_font(fnt_points);
        break;
    default:
        break;
}

switch(argument1){
    case "left":
        draw_set_halign(fa_left);
        break;
    case "center":
        draw_set_halign(fa_center);
        break;
    case "right":
        draw_set_halign(fa_right);
        break;
    default:
        break;
}

if(argument0 == "points"){
    draw_text(argument2, argument3, "Health: " + string(global.liveCount) + "  Points: " + string(global.points) + " HIGH SCORE: " + string(global.highScore));
}else{
    draw_text(argument2, argument3, argument4);
}
