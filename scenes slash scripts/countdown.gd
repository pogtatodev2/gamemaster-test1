extends Label

var countdownString = 3
var printText = "3"

func _process(delta):
	if countdownString == 3:
		printText = "3"
	if countdownString == 2:
		printText = "2"
	if countdownString == 1:
		printText = "1"
	if countdownString <= 0:
		printText = "0"
	self.set_text(printText)
	


func _on_timer_timeout():
	countdownString -= 1
