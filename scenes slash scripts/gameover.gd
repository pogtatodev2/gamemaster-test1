extends Control


#1=restart
#2=quit
func _ready():
	
	glovar.selected = 1

@warning_ignore("unused_parameter")
func _process(delta):
	if Input.is_action_just_pressed("ui_right"):
		glovar.selected += 1
		
	if Input.is_action_just_pressed("ui_left"):
		glovar.selected -= 1
	if glovar.selected == 0:
		glovar.selected = 2
	if glovar.selected == 3:
		glovar.selected = 1
		
	if glovar.selected == 1:
		$fail/restart.set_text(">RESTART")
		$fail/quit.set_text("QUIT")
		if Input.is_action_just_pressed("ui_accept"):
			get_tree().change_scene_to_file("res://scenes slash scripts/gamen_1.tscn")
			glovar.restartcount += 1
			glovar.isInGameover = false
			
	elif glovar.selected == 2:
		
		$fail/quit.set_text(">QUIT")
		$fail/restart.set_text("RESTART")
		
		
		if glovar.selected == 2 and Input.is_action_just_pressed("ui_accept"):
			get_tree().quit()
			print("f")

		

