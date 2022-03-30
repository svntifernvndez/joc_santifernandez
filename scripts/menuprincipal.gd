extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	_on_Area2D_mouse_entered()


func _on_Area2D_mouse_entered():
	if Input.is_action_just_pressed("ui_mouse_select"):
		get_tree().change_scene("res://escenes/Nivell_1.tscn")
