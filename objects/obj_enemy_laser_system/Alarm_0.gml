/// @description shoot target
// You can write your code in this editor
alarm[0] = firing_timer
if (target!=noone){
		new_laser = instance_create_layer(x,y, "instances", obj_laser);
		new_laser.target=target;
}