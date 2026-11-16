extends Node

@onready var _clips: Dictionary[String, AudioStream] = {}
@onready var _player : AudioStreamPlayer = $Player
@onready var _polyphony := 16


func _ready() -> void:
	var directory = "res://assets/audio/sfx"
	for clip in ResourceLoader.list_directory(directory):
		_clips[clip] = load(directory.path_join(clip))
	var polyphonic_stream = AudioStreamPolyphonic.new()
	polyphonic_stream.polyphony = _polyphony
	_player.stream = polyphonic_stream
	_player.bus = "SFX"
	_player.play()


func play(clip: String) -> void:
	var playback := _player.get_stream_playback() as AudioStreamPlaybackPolyphonic
	playback.play_stream(_clips[clip])
