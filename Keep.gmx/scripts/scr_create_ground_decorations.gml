///scr_create_ground_decorations
var num_decor = 0;
var objects = biome.ground_objects;

while (num_decor <= biome.ground_decorations) {
    var location = scr_find_free_ground();
    var xx = location[0];
    var yy = location[1];
    
    randomize();
    var decor = instance_create(xx * 32, yy * 32, objects[irandom(array_length_1d(objects) - 1)]);
    
    var x_size = decor.size_x / 32 - 1;
    var y_size = decor.size_y / 32 - 1;
    
    if (xx + x_size > obj_level.grid_size - 1 || yy + y_size > obj_level.grid_size - 1) {
        with(decor) {
            instance_destroy();
        }
        continue;
    }
    
    var can_place = true;
    for (gr_x = 0; gr_x <= x_size; gr_x++) {
        for (gr_y = 0; gr_y <= y_size; gr_y++) {
            if (obj_level.level[xx + gr_x, yy + gr_y] != LVL_GROUND) {
                can_place = false;
            }
        }
    }
    
    if (can_place) {
        for (gr_x = 0; gr_x <= x_size; gr_x++) {
            for (gr_y = 0; gr_y <= y_size; gr_y++) {
                obj_level.level[xx + gr_x, yy + gr_y] = LVL_OBJECT;
            }
        }
        
        num_decor++;
        
    } else {
        with(decor) {
            instance_destroy();
        }
    }
}
