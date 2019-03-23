/// @draw arrow

event_inherited();
if instance_exists(target) and not destroyed
	draw_arrow(x,y-34,target.x,target.y,8)