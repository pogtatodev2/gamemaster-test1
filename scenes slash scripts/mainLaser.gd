extends Panel

var tween = create_tween()
var state = 1

@onready var forwardTween = create_tween()
@onready var backwardsTween = create_tween()

func _ready():
	self.rotation += 0.00001
	
#state 0=moving
#state 1=forward finished
#state 2=retreat finished
func forward():
	tween.tween_property(self, "rotation", 0.5, 0.5)
	await tween.finished
	state = 1
	

func retreat():
	tween.tween_property(self, "rotation", -0.5, 0.5)
	
	await tween.finished 
	state = 2
	

func _process(delta):
	tween = create_tween()
	
	if state == 1:
		
		retreat()
		
		
	if state == 2:
		forward()
		
		
	
	
#if self.rotation == 0.5:
#		retreat()
#	if self.rotation == -0.5:
#		forward()
	

func _physics_process(delta):
	pass
		
	
