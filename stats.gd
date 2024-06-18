extends Control

var falsetext = "IDENTIFIER:
%s"
var truetext = falsetext % glovar.pname

var restartunedit = "RESTARTS: %s"
var restartedit = restartunedit % glovar.restartcount

var hitsunedit = "HITS: %s"
var hitsedit = hitsunedit % glovar.hitcount

func _process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		get_tree().quit()
	
	$acsiiPfp.text = truetext
	$stats/restarts.text = restartedit
	$stats/hits.text = hitsedit
	$stats/score.set_text("SCORE: " +str(glovar.score))
	
	
