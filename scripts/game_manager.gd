extends Node

@onready var enemy = preload("res://scenes/enemy.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var new_enemy = enemy.instantiate()
	new_enemy.pos = Vector2(200,200)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
