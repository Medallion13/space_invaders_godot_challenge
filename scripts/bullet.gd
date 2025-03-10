extends CharacterBody2D

@export var SPEED : int = 100

var global_pos: Vector2
var dir: float

func _ready() -> void:
	global_position = global_pos
	
func	 _physics_process(delta: float) -> void:
	velocity = Vector2(0, SPEED)
	
	move_and_slide()
	
