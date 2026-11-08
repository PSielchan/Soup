extends Node2D

var speed = Vector2(0,-100)
@onready var rigid_body_2d: RigidBody2D = $RigidBody2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	rigid_body_2d.linear_velocity=speed


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
