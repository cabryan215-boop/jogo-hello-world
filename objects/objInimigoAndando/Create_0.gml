velocidadehorizontal=random_range(-1,1)
velocidadeVertical=random_range(-1,1)
velocidadeMaxima=5


if velocidadeVertical > 0{
	velocidadeVertical = 1
}
else if velocidadeVertical <= 0{
	velocidadeVertical = -1
}

if velocidadehorizontal > 0{
	velocidadehorizontal = 1
}
else if velocidadehorizontal <= 0{
	velocidadehorizontal = -1
}
velocidade = 1