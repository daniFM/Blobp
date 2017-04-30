if(device_mouse_check_button(0, mb_left)){
    if(shotCD < 0){
        instance_create(obj_control.x, obj_control.y, obj_playerBullet);
        //timeline_index = anim_shoot;
        //timeline_position = 0;
        //timeline_running = true;
        shotCD = 30;
    }else{
        if(shotCD > 15){
            image_xscale -= img_scaling;
            image_yscale -= img_scaling;
        }else{
            image_xscale += img_scaling;
            image_yscale += img_scaling;
        }
        shotCD--;
    }
}
//show_debug_message(shotCD);
