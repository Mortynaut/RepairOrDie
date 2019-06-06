extends Node2D

var _shipSize:= Vector2(600,300)

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	get_tree().set_screen_stretch(SceneTree.STRETCH_MODE_2D, SceneTree.STRETCH_ASPECT_KEEP, _shipSize)
	OS.set_window_size(2 * _shipSize)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
