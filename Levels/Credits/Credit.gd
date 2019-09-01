extends TextureRect

func _ready():
	pass


func _on_Back_pressed():
	get_tree().change_scene("res://Levels/Menu/MainMenu.tscn")
