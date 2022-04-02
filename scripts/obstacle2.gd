extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var velocitat = 350
var direccio = Vector2.LEFT

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position += velocitat * direccio * delta
	if position.x >= 925:
		position.x = 925
		direccio = Vector2.LEFT
	if position.x <= 458:
		position.x = 458
		direccio= Vector2.RIGHT
