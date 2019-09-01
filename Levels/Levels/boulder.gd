extends TextureRect




func _on_Level_delete(finish):
	if finish:
		queue_free()
