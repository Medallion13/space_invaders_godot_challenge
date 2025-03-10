extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0


func _physics_process(delta: float) -> void:
	# Handle shoot.
	if Input.is_action_just_pressed("shoot") and is_on_floor():
		#TODO make the logic to shoot
		pass

	# Get the input direction and handle the movement/deceleration.
	# Adapt the movement
	var direction := Input.get_axis("move_left", "move_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
