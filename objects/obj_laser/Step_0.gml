/// @description Insert description here
// You can write your code in this editor
duration-=1;
if (instance_exists(target)){
	if(object_is_ancestor(target.object_index, obj_subsystem) and instance_exists(target.container) and target.container.shielded>0){
		target.container.shielded -= 1/max_duration
	}
	else{
		target.hp-= 1/max_duration
		if (target.hp <= 0) {
			audio_play_sound(snd_destruction, 1, false);
		}
	}
}
if (duration==0){
	instance_destroy(self)
}