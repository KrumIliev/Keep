///scr_enemy_spider_attack
var proj = noone;

switch (var_face) {
    case RIGHT:
        proj = instance_create(x + 32, y, obj_spider_projectile);
        break;     
                    
    case LEFT: 
        proj = instance_create(x - 32, y, obj_spider_projectile);
        break; 
                    
    case UP: 
        proj = instance_create(x, y - 32, obj_spider_projectile);
        break;     
                   
    case DOWN: 
        proj = instance_create(x, y + 32, obj_spider_projectile);
        break;     
}

scr_fire_curved_projectile(proj, 50, id);

