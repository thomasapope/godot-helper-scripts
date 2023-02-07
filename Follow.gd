extends Camera2D

export var target_nodepath = ""


func _physics_process(_delta):
	if (get_node("../" + target_nodepath) != null):
		position = get_node("../" + target_nodepath).position
