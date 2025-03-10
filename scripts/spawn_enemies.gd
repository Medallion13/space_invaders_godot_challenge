extends Node

const ENEMY = preload("res://scenes/enemy.tscn")
var columns = range(8)
var rows = range(4)
var enemies = []


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for row in rows:
		enemies.append([])
		for column in columns:
			var alien = ENEMY.instantiate()
			alien.global_position = Vector2(120 + (40 * column), 160 + (40*row))
			self.add_child(alien)
			enemies[row].append(alien)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
