///scr_enemy_golem_attack
var att = noone;

switch (var_face) {
    case RIGHT:
        att = instance_create(x + 48, y, obj_golem_slam);
        break;     
                    
    case LEFT: 
        att = instance_create(x - 48, y, obj_golem_slam);
        break; 
                    
    case UP: 
        att = instance_create(x, y - 48, obj_golem_slam);
        break;     
                   
    case DOWN: 
        att = instance_create(x, y + 24, obj_golem_slam);
        break;     
}

att.creator = id;
