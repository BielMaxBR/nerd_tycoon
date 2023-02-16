extends KinematicBody2D

var direction = Vector2.ZERO
var speed = 220

func _ready():
	pass # Replace with function body.

func _process(delta):
	direction.x = Input.get_axis("L","R")
	direction.y = Input.get_axis("U","D")
	
	move_and_slide(direction * speed)

