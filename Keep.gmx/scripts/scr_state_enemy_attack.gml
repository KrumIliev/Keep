///scr_state_enemy_attack
scr_enemy_check_for_player();
var_action = ATTACK;

if (image_index >= 4 && can_attack) {
    can_attack = false;
    switch (var_face) {
            case RIGHT:
                instance_create(x + 32, y, obj_golem_slam);
                break;     
                
            case LEFT: 
                instance_create(x - 32, y, obj_golem_slam);
                break; 
                
            case UP: 
                instance_create(x, y - 32, obj_golem_slam);
                break;     
               
            case DOWN: 
                instance_create(x, y + 16, obj_golem_slam);
                break;     
    }
}

