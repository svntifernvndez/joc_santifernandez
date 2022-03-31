extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var velocitat = 300
var direccio = Vector2.DOWN

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if self.is_on_wall():
		direccio *= -1
	move_and_slide(direccio*velocitat)
	



func _on_KinematicBody2D_input_event(viewport, event):
	get_tree().reload_current_scene()
