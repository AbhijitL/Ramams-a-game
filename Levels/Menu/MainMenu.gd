extends Control

func _ready():
	$BGM.play()


func _on_Play_pressed():
	get_tree().change_scene("res://Levels/Story/story1.tscn")


func _on_Credit_pressed():
	get_tree().change_scene("res://Levels/Credits/Credit.tscn")
