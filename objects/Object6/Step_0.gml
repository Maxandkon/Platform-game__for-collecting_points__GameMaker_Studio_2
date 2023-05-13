if (ncb < Object5.cr){
	instance_destroy();
	if(Object1.x < 640){
		if(Object3.y < 473){
			instance_create_layer(random_range(740,1242), random_range(473,655), "Instances_1",Object6);
		}
		else{	
			instance_create_layer(random_range(740,1242), random_range(473,150), "Instances_1",Object6);
		}
	}
	else{
		if(Object3.y < 473){
			instance_create_layer(random_range(595,235), random_range(473,655), "Instances_1",Object6);
		}
		else{	
			instance_create_layer(random_range(595,235), random_range(473,150), "Instances_1",Object6);
		}
	}
//	ncb = other.cr;
}

//instance_create_layer(random_range(),random_range(), "Instances_1",Object6)

