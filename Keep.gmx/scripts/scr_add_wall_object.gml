///scr_add_wall_object(grid_x, grid_y, objects)

var grid_x = argument0;
var grid_y = argument1;
var objects = argument2;

var obj = instance_create(grid_x * 32, grid_y * 32, objects[irandom(array_length_1d(objects) - 1)]);
var x_size = obj.size_x / 32 - 1;

if (x_size > 0 && (obj_level.level[grid_x + 1, grid_y] == LVL_WALL_OUT_TOP_LEFT
    || obj_level.level[grid_x + 1, grid_y] == LVL_WALL_BODY_TOP_LEFT)) {
    with (obj) {
        instance_destroy();
    }
    
} else {
    while (x_size >= 0) {
        obj_level.level[grid_x + x_size, grid_y] = LVL_OBJECT;
        x_size--;
    }
}


