# Follow.gd by Thomas Pope
# A simple script to make a node follow another node without having to be its child.

extends Camera2D

export var target_nodepath = ""


func _physics_process(_delta):
	if (get_node("../" + target_nodepath) != null):
		position = get_node("../" + target_nodepath).position
