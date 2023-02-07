# IgnoreRotation.gd by Thomas Pope
# Ignores the rotation of the parent node, allowing this node to face a different direction if desired.

extends Node2D


func _process(delta):
	rotation = -get_parent().rotation
#	set_rotation(-get_parent().rotation)
