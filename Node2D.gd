extends Node2D

var a = Vector2(100, 200)
var velocidad = 50

func _ready():
	position = a
	
func _process(delta):
	var movimientoInput = Vector2()
	if Input.is_action_pressed("ui_left"):
		movimientoInput.x = -1
	if Input.is_action_pressed("ui_right"):
		movimientoInput.x = 1
	movimientoInput = movimientoInput.normalized()*velocidad
	position += movimientoInput*delta
