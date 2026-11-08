extends Node2D

@onready var timer: Timer = $Timer
var carrot = load("res://scenes/enemy_carrot.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	timer.start()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func spawn_enemy(enemy):
	var new_enemy = carrot.instantiate()
	add_child(new_enemy)
	if randf()>0.5:
		var x = randf_range(-100,100)
		var y = randf_range(-(100-abs(x))*0.65,(100-abs(x))*0.65)-65
		new_enemy.position = Vector2(x, y)
	else:
		var y = randf_range(-130,0)
		var x = randf_range(-(65-abs(y+65))/0.65,(65-abs(y+65))/0.65)
		new_enemy.position = Vector2(x,y)
	
	new_enemy.scale = Vector2(0.25, 0.25)
	new_enemy.rotation = randf_range(-80,80)
	new_enemy.speed = Vector2(200,0)

func _on_timer_timeout() -> void:
	spawn_enemy(carrot)
