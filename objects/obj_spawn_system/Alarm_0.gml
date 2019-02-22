/// @description Alarm for spawning enemies

if instance_number(obj_enemy_simple) < max_num_minions {
	instance_create_layer(path_x, path_y, "instances", obj_enemy_simple);
}
alarm[0] = spawn_step_time;
