///scr_add_wall

// Store the targets id number 
var target = instance_place(x, y, obj_floor);
var wall = noone;

// Check if the neighboring floors and place walls
if (instance_exists(target)) {

    // left
    if (!place_meeting(x + 32, y, obj_floor) && scr_check_grid(x + 32, y, GENERATOR_EMPTY)) {
        wall = instance_create(x + 32, y, obj_wall);
        wall.image_index = scr_get_wall_sprite(x + 32, y);
        scr_add_to_grid(x + 32, y, GENERATOR_WALL);
    }
    
    // right
    if (!place_meeting(x - 32, y, obj_floor) && scr_check_grid(x - 32, y, GENERATOR_EMPTY)) {
        wall = instance_create(x - 32, y, obj_wall);
        wall.image_index = scr_get_wall_sprite(x - 32, y);
        scr_add_to_grid(x - 32, y, GENERATOR_WALL);
    }
    
    // top
    if (!place_meeting(x, y + 32, obj_floor) && scr_check_grid(x, y + 32, GENERATOR_EMPTY)) {
        wall = instance_create(x, y + 32, obj_wall);
        wall.image_index = scr_get_wall_sprite(x, y + 32);
        scr_add_to_grid(x, y + 32, GENERATOR_WALL);
    }
    
    // bottom
    if (!place_meeting(x, y - 32, obj_floor) && scr_check_grid(x, y - 32, GENERATOR_EMPTY)) {
        wall = instance_create(x, y - 32, obj_wall);
        wall.image_index = scr_get_wall_sprite(x, y - 32);
        scr_add_to_grid(x, y - 32, GENERATOR_WALL);
    }
    
    // top-left
    if (!place_meeting(x + 32, y + 32, obj_floor) && scr_check_grid(x + 32, y + 32, GENERATOR_EMPTY)) {
        wall = instance_create(x + 32, y + 32, obj_wall);
        wall.image_index = scr_get_wall_sprite(x + 32, y + 32);
        scr_add_to_grid(x + 32, y + 32, GENERATOR_WALL);
    }
    
    // bottom-left
    if (!place_meeting(x + 32, y - 32, obj_floor) && scr_check_grid(x + 32, y - 32, GENERATOR_EMPTY)) {
        wall = instance_create(x + 32, y - 32, obj_wall);
        wall.image_index = scr_get_wall_sprite(x + 32, y - 32);
        scr_add_to_grid(x + 32, y - 32, GENERATOR_WALL);
    }
    
    // top-right
    if (!place_meeting(x - 32, y + 32, obj_floor) && scr_check_grid(x - 32, y + 32, GENERATOR_EMPTY)) {
        wall = instance_create(x - 32, y + 32, obj_wall);
        wall.image_index = scr_get_wall_sprite(x - 32, y + 32);
        scr_add_to_grid(x - 32, y + 32, GENERATOR_WALL);
    }
    
    // bottom-right
    if (!place_meeting(x - 32, y - 32, obj_floor) && scr_check_grid(x - 32, y - 32, GENERATOR_EMPTY)) {
        wall = instance_create(x - 32, y - 32, obj_wall);
        wall.image_index = scr_get_wall_sprite(x - 32, y - 32);
        scr_add_to_grid(x - 32, y - 32, GENERATOR_WALL);
    }
}

if (x >= room_width) { 
    y += 32; 
    x = 0; 
} else {
    x += 32;
}
