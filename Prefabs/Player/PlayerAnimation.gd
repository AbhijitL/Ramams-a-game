extends AnimatedSprite



func _on_Player_animate(motion):
	if motion.x < 0:
		play("run")
		flip_h = true
	elif motion.x > 0:
		play("run")
		flip_h =false
	elif motion.y!= 0:
		play("run")
	else:
		play("idle")
