extends Area2D

export(int) var SPEED = 20
export(int) var ARMOR = 3

func _process(delta):
	position.x -= SPEED * delta
