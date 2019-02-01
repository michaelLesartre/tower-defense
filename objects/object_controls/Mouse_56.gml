/// @description Insert description here
// You can write your code in this editor
if instance_position(mouse_x, mouse_y, obj_tower) == noone {
	if instance_exists(global.selected){
		global.selected.target=noone;
	}
	global.selected=noone;	
}