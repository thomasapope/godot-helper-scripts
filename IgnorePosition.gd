# IgnorePosition.gd by Thomas Pope
# Ignores the position of the parent node, effectively keeping this node stationary.

extends Node2D

var offset

func _ready():
	offset = global_position - get_parent().global_position

func _process(delta):
	global_position = get_parent().global_position + offset

