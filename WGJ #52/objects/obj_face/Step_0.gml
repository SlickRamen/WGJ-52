/// @desc Do Stuff
var spd = 0.1

if mode == "in"{
image_angle = lerp(image_angle,-45,spd)	
if image_angle <= -44.5{
	mode = "out"	
}
}else if mode == "out"{
image_angle = lerp(image_angle,45,spd)	
if image_angle >= 44.5{
	mode = "in"	
}	
}