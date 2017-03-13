///scr_add_wall

// Store the targets id number 
var target = instance_place(x, y, obj_floor);

// Check if the neighboring floors and place walls
if (instance_exists(target)) {

    // left
    if (!place_meeting(x + 32, y, obj_floor) && scr_check_grid(x + 32, y, GENERATOR_EMPTY)) {
        scr_create_wall(x + 32, y, obj_level_generator.t_set);
    }
    
    // right
    if (!place_meeting(x - 32, y, obj_floor) && scr_check_grid(x - 32, y, GENERATOR_EMPTY)) {
        scr_create_wall(x - 32, y, obj_level_generator.t_set);
    }
    
    // top
    if (!place_meeting(x, y + 32, obj_floor) && scr_check_grid(x, y + 32, GENERATOR_EMPTY)) {
         scr_create_wall(x, y + 32, obj_level_generator.t_set);
    }
    
    // bottom
    if (!place_meeting(x, y - 32, obj_floor) && scr_check_grid(x, y - 32, GENERATOR_EMPTY)) {
        scr_create_wall(x, y - 32, obj_level_generator.t_set);
    }
    
    // top-left
    if (!place_meeting(x + 32, y + 32, obj_floor) && scr_check_grid(x + 32, y + 32, GENERATOR_EMPTY)) {
        scr_create_wall(x + 32, y + 32, obj_level_generator.t_set);
    }
    
    // bottom-left
    if (!place_meeting(x + 32, y - 32, obj_floor) && scr_check_grid(x + 32, y - 32, GENERATOR_EMPTY)) {
        scr_create_wall(x + 32, y - 32, obj_level_generator.t_set);
    }
    
    // top-right
    if (!place_meeting(x - 32, y + 32, obj_floor) && scr_check_grid(x - 32, y + 32, GENERATOR_EMPTY)) {
        scr_create_wall(x - 32, y + 32, obj_level_generator.t_set);
    }
    
    // bottom-right
    if (!place_meeting(x - 32, y - 32, obj_floor) && scr_check_grid(x - 32, y - 32, GENERATOR_EMPTY)) {
        scr_create_wall(x - 32, y - 32, obj_level_generator.t_set);
    }
}

if (x >= room_width) { 
    y += 32; 
    x = 0; 
} else {
    x += 32;
}
