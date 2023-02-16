extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var valor = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	$Label.text = "+%s" % valor 


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.y -= 1
	modulate.a -= 0.01
	if modulate.a <= 0:
		queue_free()
