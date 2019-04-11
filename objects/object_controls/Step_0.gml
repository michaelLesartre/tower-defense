/// @description Insert description here
// You can write your code in this editor
if (global.playerhealth<1){
	show_message("The Mechs have destroyed your base. You have lost.")
	game_restart()
}
else if (instance_number(obj_subsystem)==0 and timeline_position>timeline_max_moment(timeline_index)){
	room_goto_next()
	curr_level++;
	global.enemypath++;
	timeline_index = levels[curr_level]
	timeline_position = 0
}