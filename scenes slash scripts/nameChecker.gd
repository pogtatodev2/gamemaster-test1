extends LineEdit

var validNames = ["@PICKELZ", "@DERNI", "@WHITEFACE", "@CASUALCHARISKENJOYER", "@MATHEMATICA", "CHARA", "@SPECIMEN_2", "@LEAN", "@SMORGE", "@DEADMAN68687", "@KEON", "@KATACLYSMIX"]

func _on_text_submitted(new_text):
	glovar.pname = new_text
	if validNames.has(new_text):
		print("correct")
		get_tree().change_scene_to_file("res://scenes slash scripts/intro.tscn")
	else:
		print("no")
		print(glovar.pname)
		$status.visible_ratio = 1
		
		
