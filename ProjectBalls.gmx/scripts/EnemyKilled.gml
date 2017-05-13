switch(argument0){
    case 1:
        instance_destroy();
        global.points += 50;
        break;
    case 2:
        instance_destroy();
        global.points += 100;
        break;
    case 3:
        instance_destroy();
        global.points += 150;
        break;
    default:
        break;
}
