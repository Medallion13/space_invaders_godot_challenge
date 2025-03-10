extends Node2D

const BULLET = preload("res://scenes/bullet.tscn")
const SPEED = 300.0

@export var fire_pos: Node2D

func fire():
	var bullet = BULLET.instantiate()
	bullet.dir = rotation
	bullet.global_pos = fire_pos.global_position
	get_parent().add_child(bullet)


func _on_timer_timeout() -> void:
	print("fire")
	fire()
