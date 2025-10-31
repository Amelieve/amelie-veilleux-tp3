extends Panel

func _ready():
	visible = false  # Le menu est caché au départ

func show_menu():
	get_tree().paused = true
	visible = true
	# Important : autoriser le menu à fonctionner même en pause
	process_mode = Node.PROCESS_MODE_ALWAYS

func hide_menu():
	visible = false
	get_tree().paused = false

# Connecte tes boutons dans l’éditeur :
func _on_ResumeButton_pressed():
	hide_menu()

func _on_QuitButton_pressed():
	get_tree().quit()
