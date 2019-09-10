extends Area2D

const ExplosionEffect = preload("res://ExplosionEffect.tscn")

export(int) var SPEED = 20
export(int) var ARMOR = 3

func _process(delta):
	position.x -= SPEED * delta

func _on_Enemy_body_entered(body):
	body.queue_free()
	ARMOR -= 1
	if ARMOR <= 0:
		var main = get_tree().current_scene
		if main.is_in_group("World"):
			main.score += 10
		queue_free()

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()

func _exit_tree():
	var main = get_tree().current_scene
	var explosionEffect = ExplosionEffect.instance()
	main.add_child(explosionEffect)
	explosionEffect.global_position = global_position
