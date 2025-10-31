extends Path2D

class_name MovingplatformSideway

@export var path_follow_2D :  PathFollow2D
@export var ease : Tween.EaseType
@export var transition : Tween.TransitionType
@export var path_time = 1.0


func _ready():
	move_tween()

func move_tween():
	var tween = get_tree().create_tween().set_loops()

	var t1 = tween.tween_property(path_follow_2D, "progress_ratio", 1.0, path_time)
	t1.set_ease(ease)
	t1.set_trans(transition)

	var t2 = tween.tween_property(path_follow_2D, "progress_ratio", 0.0, path_time)
	t2.set_ease(ease)
	t2.set_trans(transition)
