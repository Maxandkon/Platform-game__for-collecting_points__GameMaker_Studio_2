/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x,y,Oplayer)){
	instance_destroy();
	var ry = random_range(608,335);
	if (ry < 350) {
		if (Oplayer.x > 650) {
			instance_create_layer(random_range(544,736), ry, "Instances_1",Opoint)	
		}
		else {
			instance_create_layer(random_range(928,1120), ry, "Instances_1",Opoint)	
		}
	}
	else if (ry > 512) {
		if (Oplayer.x > 650) {
			instance_create_layer(random_range(192,384), ry, "Instances_1",Opoint)	
		}
		else {
			instance_create_layer(random_range(896,1216), ry, "Instances_1",Opoint)	
		}
	}
	else if (ry >= 384 and ry <= 512) {
		if (Oplayer.x > 650) {
			instance_create_layer(random_range(192,384), ry, "Instances_1",Opoint)	
		}
		else {
			instance_create_layer(random_range(768,896), ry, "Instances_1",Opoint)	
		}
	}
	else  {
		if (Oplayer.x > 650) {
			instance_create_layer(random_range(192,512), ry, "Instances_1",Opoint)	
		}
		else {
			instance_create_layer(random_range(896,1216), ry, "Instances_1",Opoint)	
		}
	}
	with(Ocount) {sz = 0; image_xscale = 1;}
	with(Oscore) {cr += 1;}
}

//  or  
//			
//  or  instance_create_layer(, ry, "Instances_1",Object3)
//	 or random_range(896,1216)
//var n = 0;
//	if (n > 1 and n < 6 and x!=384 and y!=480){
//		instance_create_layer(384,480,"Instances_1",Object3);
//	}
//	else if (n < 10 and n > 5 and x!=256 and y!=608){
//		instance_create_layer(256,608,"Instances_1",Object3);
//	}
//	else if (n > 1 and n < 5 and x!=1056 and y!=352){
//		instance_create_layer(1056,352,"Instances_1",Object3);
//	}
//	else if (n < 10 and n > 6 and x!=960 and y!=576){
//		instance_create_layer(960,576,"Instances_1",Object3);
//	}
//	else if (n > 1 and n < 6 and x!=1056 and y!=352){
//		instance_create_layer(1056,480,"Instances_1",Object3);
//	}
//	else if (n < 6 and n > 2 and x!=1088 and y!=576){
//		instance_create_layer(1088,576,"Instances_1",Object3);
//	}
//	else {
//		instance_create_layer(608,352,"Instances_1",Object3);	
//	}
