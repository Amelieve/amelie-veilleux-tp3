extends CanvasLayer

const PLAY_ICON = preload("res://media/assets/icon_menu.png")

func _ready() -> void:
	$PauseMenu.hide()
	get_tree().paused = false


func _on_button_toggled(toggled_on: bool) -> void:
	if toggled_on:
		pauser()
	else:
		_on_continue_button_pressed()


func pauser():
	print("PAUSE MODE")
	get_tree().paused = true
	$PauseMenu.show()


func _on_continue_button_pressed() -> void:
	print("PLAY MODE")
	get_tree().paused = false      # Le jeu reprend
	$PauseMenu.hide()              # Le menu pause se cache
	%Button.button_pressed = false # Le bouton toggle redevient "off"
