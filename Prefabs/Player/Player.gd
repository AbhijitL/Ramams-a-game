extends KinematicBody2D

export (int) var speed = 200

signal animate

var motion = Vector2()

func _physics_process(delta):
	move()
	animate()
	motion = move_and_slide(motion)
	


func move():
    motion = Vector2()
    if Input.is_action_pressed('right'):
        motion.x += 1
    if Input.is_action_pressed('left'):
        motion.x -= 1
    if Input.is_action_pressed('down'):
        motion.y += 1
    if Input.is_action_pressed('up'):
        motion.y -= 1
    motion = motion.normalized() * speed


func animate():
	emit_signal("animate",motion)