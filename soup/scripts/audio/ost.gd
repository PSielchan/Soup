extends Node

@onready var _player : AudioStreamPlayer = $Player


func play(clip: String) -> void:
	var directory = "res://assets/audio/ost"
	var stream = load(directory.path_join(clip))
	stream.loop = true
	_player.stream = stream
	_player.play()
