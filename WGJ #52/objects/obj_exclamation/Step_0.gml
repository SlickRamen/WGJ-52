/// @desc Do Stuff
image_xscale = lerp(image_xscale,xx,0.4)
image_yscale = lerp(image_yscale,yy,0.4)

if squash == "up" and image_xscale < 0.4{
	xx = 2
	yy = 0.3
	squash = "across"
}

if image_yscale < 0.4 and squash == "across"{
	squash = "normal"
	xx = 1
	yy = 1
}

if squash == "normal" and image_xscale == 1{
	squash = "down"
	xx = 0
	yy = 0
}

if image_xscale == 0 and squash == "down"{
	instance_destroy()	
}