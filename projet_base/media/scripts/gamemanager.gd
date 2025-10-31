extends Node

var current_area = 1
var area_path = "res://"

var coin = 0

func _ready():
	reset_coin()

func next_level():
	current_area += 1
	var full_path = "area_" + str(current_area) + ".tscn"
	get_tree().change_scene_to_file("res://area_test.tscn")
	print("le joueur est dans area")
	set_up_area()

func set_up_area():
	reset_coin()
	
func add_coin():
	coin += 1
	if coin >= 4:
		var portal = get_tree().get_first_node_in_group("area_exits") as AreaExit
		portal.open()

func reset_coin():
	coin = 0
