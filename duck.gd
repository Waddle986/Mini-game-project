extends CharacterBody2D

var speed = 100

var direction = Vector2(1, -1).normalized()

func _physics_process(delta):
	velocity = direction * speed
	move_and_slide()

var falling = false
var gravity = 200
var velo = Vector2.ZERO

func _ready():
	input_pickable = true

func _input_event(viewpoint, event, shape_idx):
	if event is InputEventMouseButton and event.pressed:
		falling = true
