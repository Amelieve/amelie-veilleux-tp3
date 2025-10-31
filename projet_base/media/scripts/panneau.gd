extends Area2D
class_name PanneauMessage 

func _on_body_exited(body: Node2D) -> void:
	pass # Replace with function body.

func _ready() -> void:
	$Message.hide()


func show_message(_body):
	$Timer.start()
	$Message.show()
	#$Message/Fond/Etiquette.text = message
	await $Timer.timeout
	$Message.hide()
	

func hide_message(_body) -> void:
	$Timer.stop()
	$Message.hide()
