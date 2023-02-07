# IgnoreTransforms.gd by Thomas Pope
# Can be set to ignore certain transforms from the parent node.
# This could be done more easily by adding a following function,
# but you can use this if you want a node to still be a child
# of the node it is following.

extends Node2D

export var ignore_position:bool = false
export var ignore_rotation:bool = false

var offset


func _ready():
	# Set offset for ignoring position
	offset = global_position - get_parent().global_position


func _process(delta):
	# Position
	if (ignore_position):
		global_position = get_parent().global_position + offset
	
	# Rotation
	if (ignore_rotation):
		rotation = -get_parent().rotation
