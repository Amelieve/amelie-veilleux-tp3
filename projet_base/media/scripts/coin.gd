extends Area2D


func _on_body_entered(body):
	if body is PlayerController:
		var sfx = $CoinSound.duplicate()
		get_tree().current_scene.add_child(sfx)
		sfx.global_position = global_position
		sfx.play()

		Gamemanager.add_coin()
		queue_free()
	
