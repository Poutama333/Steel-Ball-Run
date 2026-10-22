extends Control

@export var stopwatch_label : Label

var  stopwatch

func _ready():
	stopwatch = get_tree().get_first_node_in_group("stopwatch")

func _process(_delta):
	update_stopwatch_label()

func update_stopwatch_label():
	stopwatch_label.text = stopwatch.time_to_string()
