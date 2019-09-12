extends Node

func _process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		get_tree().change_scene("res://World.tscn")
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().quit()
