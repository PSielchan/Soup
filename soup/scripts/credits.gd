extends Node2D


func _ready() -> void:
	AudioManager.play_music("rickroll.mp3")


func _on_return_button_down() -> void:
	AudioManager.play_effect("click_sound_2.mp3")
	get_tree().change_scene_to_file("res://scenes/menu.tscn")
