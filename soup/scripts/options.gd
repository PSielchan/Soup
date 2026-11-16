extends Node2D

@onready var _ost = $OST
@onready var _sfx = $SFX

func _ready() -> void:
	_ost.value = AudioManager.get_music_volume()
	_sfx.value = AudioManager.get_sfx_volume()


func _on_return_button_down() -> void:
	AudioManager.play_effect("click_sound_2.mp3")
	get_tree().change_scene_to_file("res://scenes/menu.tscn")


func _on_ost_value_changed(value: float) -> void:
	AudioManager.set_music_volume(value)


func _on_sfx_value_changed(value: float) -> void:
	AudioManager.set_effects_volume(value)
