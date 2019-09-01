extends Node2D

var child = 0
signal delete
var finish = false
var childMissing = 20

func _ready():
	add_to_group("GameManager")
	$bgm.play()
	
func childAdd():
	child += 1
	get_tree().call_group("GUI", "update_child_gui", child)
	print(child)
	child_collected()
	

func child_collected():
	if child > childMissing - 1:
		finish = true
		emit_signal("delete",finish)
		