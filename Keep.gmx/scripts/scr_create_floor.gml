///scr_create_floor

// How many floor tiles have been placed?
var steps = 0;
var steps_max = 550;

// Direction
var dir = 1;

// Randomize the seed 
randomize();

// Starting position
grid_x = 17;
grid_y = 17;

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
    if (grid_x < 2) { grid_x = 2; }
    if (grid_x > obj_level.grid_size - 3) { grid_x = obj_level.grid_size - 3; }
    if (grid_y < 2) { grid_y = 2; }
    if (grid_y > obj_level.grid_size - 3) { grid_y = obj_level.grid_size - 3; }
    
    steps++;
}
