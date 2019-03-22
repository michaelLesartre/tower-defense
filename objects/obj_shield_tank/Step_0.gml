if(hp<=max_hp/2 and not overloaded){
	overloaded=true
	container.max_shield++;
}
else{
	if(hp>max_hp/2 and overloaded){
		overloaded=false
		container.max_shield--;
	}
}


max_charge = base_max_charge*max_hp/hp



if(instance_exists(container)){
	if (container.shielded < container.max_shield){
		charge++
		if(charge>=max_charge){
			container.shielded++
			if(overloaded){
				if(container.shielded < container.max_shield)
					container.shielded++
				hp--
			}
			charge=0
		}
	}
	else {
		charge=0
	}
	
}

if hp<=0{
	instance_destroy(self)	
}