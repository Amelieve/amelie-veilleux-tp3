extends Node

signal coin_collectee(valeur_monnaies)

var current_area = 1
var area_path = "res://Areas/"
var max_area = 4 

var coin = 0

func _ready():
	reset_coin()

func next_level():
	current_area += 1

	# Empêcher de dépasser le dernier niveau
	if current_area > max_area:
		print("🎉 Jeu terminé ! Retour au menu.")
		get_tree().change_scene_to_file("res://Areas/main_menu.tscn")
		return

	var full_path = area_path + "area_" + str(current_area).pad_zeros(2) + ".tscn"
	print("Chargement de :", full_path)

	get_tree().change_scene_to_file(full_path)
	set_up_area()

func set_up_area():
	reset_coin()
	
func add_coin():
	coin += 1
	if coin >= 4:
		var portal = get_tree().get_first_node_in_group("area_exits") as AreaExit
		portal.open()
	emit_signal("coin_collectee", coin)

func reset_coin():
	coin = 0
	emit_signal("coin_collectee", coin)
