extends Node2D

class_name Movingplatform

@export var path_follow_2D :  PathFollow2D
@export var ease : Tween.EaseType
@export var transition : Tween.TransitionType
@export var path_time = 1.0


func _ready():
	move_tween()

func move_tween():
	var tween = get_tree().create_tween().set_loops()
	tween.tween_property(path_follow_2D, "progress_ratio", 1.0, path_time)\
		.set_ease_type(ease)\
		.set_trans_type(transition)

	tween.tween_property(path_follow_2D, "progress_ratio", 0.0, path_time)\
		.set_ease_type(ease)\
		.set_trans_type(transition)
