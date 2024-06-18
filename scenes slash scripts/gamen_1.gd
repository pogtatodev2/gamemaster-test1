extends Node2D

var timer = 5


func _ready():
	glovar.game1health = 3

func _process(delta):
	
	if glovar.game1health == 2:
		$CanvasLayer/ColorRect3.visible = false
	if glovar.game1health == 1:
		$CanvasLayer/ColorRect2.visible = false
		
	$CanvasLayer/Label.set_text(str(timer))
	
	if timer <= 0:
		get_tree().change_scene_to_file("res://scenes slash scripts/stats.tscn")
		
		
	
		
	
	


func _on_timer_timeout():
	timer -= 1
