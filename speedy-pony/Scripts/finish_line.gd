extends Area2D

@onready var game_over_ui: CanvasLayer = $"../game_over_ui"


func _on_body_entered(body: Node2D) -> void:
	print("You WIN!!!")
	if game_over_ui:
			game_over_ui.show_screen()
