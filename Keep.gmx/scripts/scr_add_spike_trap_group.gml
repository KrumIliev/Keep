///scr_add_spike_trap_group(grid_x, grid_y)

var grid_x = argument0;
var grid_y = argument1;

var type = irandom(6);

switch (type) {
    case 0:
        scr_add_spike_trap(grid_x, grid_y);
        scr_add_spike_trap(grid_x + 1, grid_y);
        scr_add_spike_trap(grid_x + 2, grid_y);
        scr_add_spike_trap(grid_x, grid_y + 1);
        scr_add_spike_trap(grid_x + 1, grid_y + 1);
        scr_add_spike_trap(grid_x + 2, grid_y + 1);
        scr_add_spike_trap(grid_x, grid_y + 2);
        scr_add_spike_trap(grid_x + 1, grid_y + 2);
        scr_add_spike_trap(grid_x + 2, grid_y + 2);
        break;
        
    case 1:
        scr_add_spike_trap(grid_x, grid_y);
        scr_add_spike_trap(grid_x + 2, grid_y);
        scr_add_spike_trap(grid_x + 1, grid_y + 1);
        scr_add_spike_trap(grid_x, grid_y + 2);
        scr_add_spike_trap(grid_x + 2, grid_y + 2);
        break;
        
    case 2:
        scr_add_spike_trap(grid_x, grid_y);
        scr_add_spike_trap(grid_x + 4, grid_y);
        scr_add_spike_trap(grid_x + 1, grid_y + 1);
        scr_add_spike_trap(grid_x + 3, grid_y + 1);
        scr_add_spike_trap(grid_x + 2, grid_y + 2);
        scr_add_spike_trap(grid_x + 1, grid_y + 3);
        scr_add_spike_trap(grid_x + 3, grid_y + 3);
        scr_add_spike_trap(grid_x, grid_y + 4);
        scr_add_spike_trap(grid_x + 4, grid_y + 4);
        break;
        
    case 3:
        scr_add_spike_trap(grid_x, grid_y);
        scr_add_spike_trap(grid_x + 1, grid_y);
        scr_add_spike_trap(grid_x + 2, grid_y);
        scr_add_spike_trap(grid_x + 3, grid_y);
        scr_add_spike_trap(grid_x + 4, grid_y);
        break;
        
    case 4:
        scr_add_spike_trap(grid_x, grid_y);
        scr_add_spike_trap(grid_x, grid_y + 1);
        scr_add_spike_trap(grid_x, grid_y + 2);
        scr_add_spike_trap(grid_x, grid_y + 3);
        scr_add_spike_trap(grid_x, grid_y + 4);
        break;
        
    case 5:
        scr_add_spike_trap(grid_x + 2, grid_y);
        scr_add_spike_trap(grid_x + 2, grid_y + 1);
        scr_add_spike_trap(grid_x, grid_y + 2);
        scr_add_spike_trap(grid_x + 1, grid_y + 2);
        scr_add_spike_trap(grid_x + 2, grid_y + 2);
        scr_add_spike_trap(grid_x + 3, grid_y + 2);
        scr_add_spike_trap(grid_x + 4, grid_y + 2);
        scr_add_spike_trap(grid_x + 2, grid_y + 3);
        scr_add_spike_trap(grid_x + 2, grid_y + 4);
        break;
}

