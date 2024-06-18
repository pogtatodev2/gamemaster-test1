extends Label

var countdownLevel = 3 

var uneditedText = "%s, THIS IS YOUR SECOND TEST. THEY WILL GET PROGRESSIVEL MORE DIFFICULT."
var editedText = uneditedText % glovar.pname

func _ready():
	$Timer.start

func _process(delta):
	self.text = editedText
	if countdownLevel <= 0:
		get_tree().change_scene_to_file("res://scenes slash scripts/prepare.tscn")
		


func _on_timer_timeout():
	countdownLevel -= 1
	print(countdownLevel)

