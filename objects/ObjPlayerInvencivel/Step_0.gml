if keyboard_check(vk_up)or keyboard_check(ord("W")) { 
	y-=velocidade

	if keyboard_check(vk_space){
		y -=velocidade1
  	}
}
if keyboard_check(vk_down)or keyboard_check(ord("S")){
	y+=velocidade

	if keyboard_check(vk_space){
		y+=velocidade1
	}
}
if keyboard_check(vk_left)or keyboard_check(ord("A")) {
	x-=velocidade
	if image_xscale>0{
		image_xscale*= -1
	}
	if keyboard_check(vk_space){
		x-=velocidade1
	}

}
if keyboard_check(vk_right)or keyboard_check(ord("D")){
	x+=velocidade
	if image_xscale <0{
		image_xscale *= -1
	}
	
	if keyboard_check(vk_space){
		x+=velocidade1
	}

}
if keyboard_check(vk_anykey){
sprite_index=sprcorrendo
}
else{
sprite_index=sprPlayer
}
if y<=0{
	y+=velocidade

}
if y>=room_height{
   y-=velocidade
}
if x<=0{
	x+=velocidade

}
if x >=room_width{
    x-=velocidade
}
if global.pontos==8 and room != room_last{
	room_goto_next()

}
else if global.pontos ==8{
    room=room_first
}


if (place_meeting(x,y, objInimigo) or place_meeting(x,y, objInimigoAndando)) and !keyboard_check(ord("E")){

	room_restart()
}


