extends TextureRect

func _ready():
	pass
	quitthegame()


func quitthegame():
	if Input.is_action_pressed("f"):
		get_tree().quit()