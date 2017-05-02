switch(argument0){
    case 1:
        instance_destroy();
        global.points += 50;
        break;
    case 2:
        instance_destroy();
        global.points += 100;
        break;
    default:
        break;
}
