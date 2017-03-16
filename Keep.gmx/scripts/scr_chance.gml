///scr_chance(percent)
var percent = argument0;
percent = clamp(percent, 0, 1);
return random(1) < percent;
