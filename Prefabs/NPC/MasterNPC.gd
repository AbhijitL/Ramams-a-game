extends Area2D


signal coinSignal

func _on_npc1_body_entered(body):
	get_tree().call_group("GameManager", "childAdd")
	collected()
	
func collected():
	queue_free()
