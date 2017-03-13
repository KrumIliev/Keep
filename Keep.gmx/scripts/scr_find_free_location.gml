///scr_find_free_location

var location_found = false;
var xx = 0;
var yy = 0;
var type = GENERATOR_EMPTY;

while (!location_found) {
    xx = floor(random_range(1, (room_width - 64) / 32));
    yy = floor(random_range(1, (room_height - 64) / 32));
    type = obj_level_generator.level[xx, yy];
    
    if (type == GENERATOR_FLOOR) {
        location_found = true;
    }
}

result[0] = xx;
result[1] = yy;

return result;
