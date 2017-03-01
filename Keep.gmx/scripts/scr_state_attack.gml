///scr_state_attack
var_action = ATTACK;
image_speed = .4;

if (image_index >= 3 && !var_is_attacking) {
    var xx = 0; 
    var yy = 0;

    switch (var_face) {
        case DOWN:
            xx = x;
            yy = y + 40;
            break;
        
        case UP:
            xx = x;
            yy = y - 30;
            break;
            
        case LEFT:
            xx = x - 30;
            yy = y + 5;
            break;
            
        case RIGHT:
            xx = x + 30;
            yy = y + 5;
            break;
    }

    var damage = instance_create(xx, yy, obj_damage);
    damage.creator = id; 
    var_is_attacking = true;
}
