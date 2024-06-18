extends Label


func _ready():
	$Timer.start()
	pass


func _process(delta):
	pass


func _on_timer_timeout():
	print("im a goofy goober")
	get_tree().change_scene_to_file("res://scenes slash scripts/gamen_1.tscn")
