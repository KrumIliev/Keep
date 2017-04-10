///scr_enemy_golem_attack
switch (var_face) {
    case RIGHT:
        instance_create(x + 48, y, obj_golem_slam);
        break;     
                    
    case LEFT: 
        instance_create(x - 48, y, obj_golem_slam);
        break; 
                    
    case UP: 
        instance_create(x, y - 48, obj_golem_slam);
        break;     
                   
    case DOWN: 
        instance_create(x, y + 24, obj_golem_slam);
        break;     
}
