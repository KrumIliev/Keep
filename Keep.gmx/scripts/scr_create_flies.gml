///scr_create_flies

var needed = irandom(5);
var added = 0;

var grid_x = 0;
var grid_y = 0;

while (added <= needed) {
    location = scr_find_free_ground();
    grid_x = location[0];
    grid_y = location[1];
            
    instance_create(grid_x * 32, grid_y * 32, obj_fly);
    added++;
}
