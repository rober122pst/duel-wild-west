var player = oPlayer;
var enemy = oEnemy;



if((player.death or enemy.death) and !restart_ui){
	restart_ui = true;
	layer_sequence_create("Ui", x,y,seqRestartUI);
}