extends Area2D
@onready var timer: Timer = $Timer
@export var move_distance: float = 150.0  # How many pixels down it travels
@export var move_time: float = 2.0        # How many seconds the trip takes

func _ready() -> void:
	start_moving()

func start_moving() -> void:
	var tween := create_tween().set_loops()
	
	# Move DOWN from the starting point
	tween.tween_property(self, "position:y", position.y + move_distance, move_time)\
		.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
	
	# Move BACK UP to the starting point
	tween.tween_property(self, "position:y", position.y, move_time)\
		.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)

func _on_body_entered(_body: Node2D) -> void:
	print("You Died.")
	timer.start()
	



func _on_timer_timeout() -> void:
	get_tree().reload_current_scene()
