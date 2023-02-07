# Follow.gd by Thomas Pope
# A simple script to make a node follow another node without having to be its child.
# Depending on the node being followed, you may want to change _process to _physics_process

extends Node2D

var target
export var offset:Vector2 = Vector2(-30, -30)


func _process(_delta):
#	if (target != null):
	if (weakref(target).get_ref()):
		position = target.position + offset
