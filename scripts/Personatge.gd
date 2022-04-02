extends Area2D

var velocitat_inicial = 250
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var direccio = Vector2.ZERO


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _physics_process(delta):
	direccio = Vector2.ZERO
	if Input.is_action_pressed("left"):
		direccio += Vector2.LEFT
	if Input.is_action_pressed("right"):
		direccio += Vector2.RIGHT
	if Input.is_action_pressed("up"):
		direccio += Vector2.UP
	if Input.is_action_pressed("down"):
		direccio += Vector2.DOWN
	position += direccio.normalized() * velocitat_inicial * delta
	
	






func _on_Personatge_area_entered(area):
	if area.is_in_group("obstacles") or area.is_in_group("murs"):
		get_tree().reload_current_scene()
	
		
