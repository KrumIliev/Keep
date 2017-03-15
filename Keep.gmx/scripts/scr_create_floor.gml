///scr_create_floor

// How many floor tiles have been placed?
var steps = 0;
var steps_max = 550;

// Direction
var dir = 1;

// Randomize the seed 
randomize();

// Grid edges
var grid_max = obj_level.grid_size - 3;
var grid_min = 2;

// Pick random starting position
grid_x = irandom_range(grid_min, grid_max);
grid_y = irandom_range(grid_min, grid_max);

while (steps <= steps_max) {

    // Add floor in 3x3 grid around position
    obj_level.level[grid_x - 1, grid_y - 1] = LVL_GROUND;
    obj_level.level[grid_x, grid_y - 1] = LVL_GROUND;
    obj_level.level[grid_x + 1, grid_y - 1] = LVL_GROUND;
    obj_level.level[grid_x - 1, grid_y] = LVL_GROUND;
    obj_level.level[grid_x, grid_y] = LVL_GROUND;
    obj_level.level[grid_x + 1, grid_y] = LVL_GROUND;
    obj_level.level[grid_x - 1, grid_y + 1] = LVL_GROUND;
    obj_level.level[grid_x, grid_y + 1] = LVL_GROUND;
    obj_level.level[grid_x + 1, grid_y + 1] = LVL_GROUND;
    
    // Pick a random direction
    dir = choose(1, 2, 3, 4, dir, dir, dir, dir);
    
    // Move 
    if (dir == 1) { grid_x += 3; }
    if (dir == 2) { grid_y += 3; }
    if (dir == 3) { grid_x -= 3; }
    if (dir == 4) { grid_y -= 3; }
    
    // Check grid edges 
    if (grid_x < grid_min) { grid_x = grid_min; }
    if (grid_x > grid_max) { grid_x = grid_max; }
    if (grid_y < grid_min) { grid_y = grid_min; }
    if (grid_y > grid_max) { grid_y = grid_max; }
    
    steps++;
}
