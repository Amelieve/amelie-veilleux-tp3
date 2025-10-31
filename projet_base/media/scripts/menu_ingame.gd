extends CanvasLayer


const PLAY_ICON = preload("res://media/assets/icon_menu.png")

func _ready() -> void:
	$PauseMenu.hide()
	%InstructionScreen.hide()

func _on_button_toggled(toggled_on: bool) -> void:
	if toggled_on:
		pauser()
	else:
		_on_continue_button_pressed()

func pauser():
	print("PAUSE MODE")
	$PauseMenu.show()
	get_tree().paused = true
	%ShowInstructions.grab_focus.call_deferred()

func _on_continue_button_pressed() -> void:
	print("PLAY MODE")
	$PauseMenu.hide()
	#%InstructionScreen.hide()
	get_tree().paused = false
	
func _on_close_button_pressed() -> void:
	%InstructionScreen.hide()
	%ShowInstructions.grab_focus.call_deferred()


func _on_show_instructions_pressed() -> void:
	print("CLICK INSTRUCTION BUTTON")
	%InstructionScreen.show()
	%InstructionScreen/CloseButton.grab_focus.call_deferred()
