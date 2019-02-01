/// @description aim at current target
// You can write your code in this editor
target = find_best_target(x, y, obj_tower, targeting_num)
if (target!=noone){
	image_angle = point_direction(x, y, target.x, target.y)	
}
image_index = 38 - alarm[0]*38/firing_timer
if hp<=0{
	instance_destroy(self)	
}