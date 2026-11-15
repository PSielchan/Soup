extends Node

@onready var _ost = $OST
@onready var _sfx = $SFX
@onready var _current_music := ""
@onready var _current_music_volume = 1.0
@onready var _current_sfx_volume = 1.0
@onready var _sfx_index : int = AudioServer.get_bus_index("SFX")
@onready var _music_index : int = AudioServer.get_bus_index("OST")
	
func _ready() -> void:
	AudioServer.set_bus_volume_db(_sfx_index, linear_to_db(_current_sfx_volume))
	AudioServer.set_bus_volume_db(_music_index, linear_to_db(_current_music_volume))


func play_music(name: String) -> void:
	if name != _current_music:
		_ost.play(name)
		_current_music = name


func play_effect(name: String) -> void:
	_sfx.play(name)


func set_music_volume(value: float) -> void:
	_current_music_volume = value
	AudioServer.set_bus_volume_db(_music_index, linear_to_db(_current_music_volume))

	
func get_music_volume() -> float:
	return _current_music_volume


func get_sfx_volume() -> float:
	return _current_sfx_volume


func set_effects_volume(value: float) -> void:
	_current_sfx_volume = value
	AudioServer.set_bus_volume_db(_sfx_index, linear_to_db(_current_sfx_volume))
