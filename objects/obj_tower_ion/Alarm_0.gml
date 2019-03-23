/// @charging management
if(charge<4&&alarm[0]%20==0){
	charge++;
	image_index=charge;
}
alarm[0]=charge_step_time;