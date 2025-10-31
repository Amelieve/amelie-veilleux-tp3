extends Button

func _on_pressed():
	var pause_menu = get_parent().get_node("PauseMenu")
	pause_menu.show_menu()

func _ready():
	text = "Menu"
	anchor_right = 0
	anchor_bottom = 0
	offset_left = 20
	offset_top = 20
