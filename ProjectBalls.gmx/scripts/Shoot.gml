//if(device_mouse_check_button(0, mb_left)){
//    if(shotCD < 0){
//        instance_create(obj_control.x, obj_control.y, obj_playerBullet);
//        shotCD = 30;
//    }else{
//        if(shotCD > 25){
//            image_xscale -= img_scaling;
//            image_yscale -= img_scaling;
//        }else if(shotCD >= 20){
//            image_xscale += img_scaling;
//            image_yscale += img_scaling;
//        }
//        shotCD--;
//    }
//}

if(device_mouse_check_button(0, mb_left)){
    if(shoot){
        instance_create(obj_control.x, obj_control.y, obj_playerBullet);
        shotCD = shotMaxCD;
        shoot = false;
    }
}
if(!shoot){
    shotCD--;
    if(shotCD <= 0){
        shoot = true;
        image_xscale = 1;
        image_yscale = 1;
    }
}
if(shotCD > shotMaxCD - 5){
    image_xscale -= img_scaling;
    image_yscale -= img_scaling;
}else if(shotCD > shotMaxCD - 10){
    image_xscale += img_scaling;
    image_yscale += img_scaling;
}
