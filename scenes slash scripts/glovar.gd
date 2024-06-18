extends Control

var game1iframes = false
var game1health = 3
var selected = 1
var pname  = ""
var hitcount = 0
var restartcount = 0
var score = 1000
var currentScene = -1
var isInGameover = false
var isInGame1 = false
var isInGame2 = false
var isInGame3 = false
var isInGame4 = false


# current scene = 0 prepare
# current scene = 1 gamen1
# //      //    = 2 ganen2
# //      //    = 3 gamen3
# //      //    = 4 gamen4

func _process(delta):
	if glovar.game1health <= 0 and isInGameover == false:
		get_tree().change_scene_to_file("res://scenes slash scripts/gameover.tscn")
		isInGameover = true
		score -= 200
		
	
		


