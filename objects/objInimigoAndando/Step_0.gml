x += velocidadehorizontal
y += velocidadeVertical
if y <= 0 or y >= room_height{
  velocidadeVertical *= -1
  
}
if x<= 0 or x >= room_width{
	velocidadehorizontal *= -1

}
if velocidadehorizontal<velocidadeMaxima and velocidadeVertical> -velocidadeMaxima{
	velocidadehorizontal *=1.005
}
if velocidadeVertical< velocidadeMaxima and velocidadeVertical> -velocidadeMaxima{
	velocidadeVertical *= 1.005
}

if velocidade< velocidadeMaxima and velocidade> -velocidadeMaxima{
	velocidade *= 1.005
}
if image_xscale > 0 and velocidadehorizontal<0{
	image_xscale *= -1
	
}
if image_xscale < 0 and velocidadehorizontal>0{
	image_xscale *= -1
}

if place_meeting(x+10,y,objInimigo){
	velocidadehorizontal=-velocidade
}
if place_meeting(x+10,y,objInimigoAndando){
	outraInstancia=instance_place(x+10,y,objInimigoAndando)
	velocidadehorizontal= -velocidade
	outraInstancia.velocidadehorizontal= outraInstancia.velocidade
}
if place_meeting(x-10,y,objInimigo){
	velocidadehorizontal=velocidade
}
if place_meeting(x-10,y,objInimigoAndando){
	outraInstancia= instance_place(x-10,y,objInimigoAndando)
	velocidadehorizontal=velocidade
	outraInstancia.velocidadehorizontal= -outraInstancia.velocidade
}
if place_meeting(x,y -10,objInimigo){
   velocidadeVertical=velocidade
}
if place_meeting(x,y-10,objInimigoAndando){
	outraInstancia= instance_place(x,y-10,objInimigoAndando)
	velocidadeVertical=velocidade
	outraInstancia.velocidadeVertical= -outraInstancia.velocidade
}
if place_meeting(x,y +10,objInimigo){
   velocidadeVertical= -velocidade
}
if place_meeting(x,y+10,objInimigoAndando){
	outraInstancia= instance_place(x,y+10,objInimigoAndando)
	velocidadeVertical=velocidade
	outraInstancia.velocidadeVertical= -outraInstancia.velocidade

}