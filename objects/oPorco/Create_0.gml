/// @description Insert description here
// You can write your code in this editor



// Inherit the parent event
event_inherited();

velocidade = choose(1,-1);
andando = choose(true, false);

if(andando)
	{
		velocidadeHorizontal = choose(velocidade, -velocidade);
	}
	else 
	{
		velocidadeHorizontal = 0;	
	}	
tempo_decidindo_andar = room_speed * 3;