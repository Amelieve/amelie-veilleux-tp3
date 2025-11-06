extends Panel

func _ready():
	visible = false 

func show_menu():
	get_tree().paused = true
	visible = true

	process_mode = Node.PROCESS_MODE_ALWAYS

func hide_menu():
	visible = false
	get_tree().paused = false


func _on_ResumeButton_pressed():
	hide_menu()

func _on_ContinueButton_pressed():
	print("Continue button pressed") # ← Test
	hide_menu()
