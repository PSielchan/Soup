extends Node

@onready var _ost = $OST
@onready var _sfx = $SFX
@onready var _current_music := ""
	
func _ready() -> void:
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("SFX"), linear_to_db(0.5))
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("OST"), linear_to_db(0.5))


func play_music(name: String) -> void:
	if name != _current_music:
		_ost.play(name)
		_current_music = name


func play_effect(name: String) -> void:
	_sfx.play(name)


func set_music_volume(value: float) -> void:
	var index = AudioServer.get_bus_index("OST")
	var db = str(AudioServer.get_bus_volume_db(index))
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("OST"), linear_to_db(value))


func set_effects_volume(value: float) -> void:
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("SFX"), linear_to_db(value))
