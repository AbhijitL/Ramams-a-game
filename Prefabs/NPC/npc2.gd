extends Area2D

func _ready():
	pass


func _on_npc2_body_entered(body):
	get_tree().call_group("GameManager", "childAdd")
	collected()
	
func collected():
	queue_free()
