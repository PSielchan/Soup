extends Node2D



func _on_start_button_down() -> void:
	get_tree().change_scene_to_file("res://scenes/game.tscn")


func _on_options_button_down() -> void:
	get_tree().change_scene_to_file("res://scenes/options.tscn")


func _on_credits_button_down() -> void:
	get_tree().change_scene_to_file("res://scenes/credits.tscn")
