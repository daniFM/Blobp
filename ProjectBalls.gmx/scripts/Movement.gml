if(device_mouse_check_button(0, mb_left)){
    if(device_mouse_x(0) < 192){
        pos_y = device_mouse_y(0);
        if(abs(device_mouse_y(0) - y) > max_speed){
            move_towards_point(pos_x, pos_y, max_speed);
        }else if(abs(device_mouse_y(0) - y) > max_speed / 4){
            move_towards_point(pos_x, pos_y, max_speed / 4);
        }else{
            speed = 0;
        }
    }
}else{
    speed = 0;
}
