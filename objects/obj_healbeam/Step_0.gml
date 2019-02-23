/// @description Insert description here
// You can write your code in this editor
duration-=1;
if (instance_exists(target)){
	if(target.hp<target.max_hp)
		target.hp+= 1/max_duration
}
if (duration==0){
	instance_destroy(self)
}