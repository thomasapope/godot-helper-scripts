extends TileMap

export var placeholder_tile_id = 1
#export(PackedScene)var node_PlaceholderReplacer
var node_PlaceholderReplacer = preload("res://scenes/Hazard.tscn")


func _ready():
#	var Placeholder = preload(node_PlaceholderReplacer)
	
	var tm = get_parent().get_node("TileMap")
	var sizex = tm.get_cell_size().x
	var sizey = tm.get_cell_size().y
#	var ts = tm.get_tileset()
	var uc = tm.get_used_cells()
	for pos in uc :
		var id = tm.get_cell(pos.x, pos.y)
#		var name = ts.tile_get_name(id)
#		if name == "1":
		if id == placeholder_tile_id:
			var node = node_PlaceholderReplacer.instance()
			node.set_position(Vector2( pos.x * sizex + (0.5*sizex), pos.y * sizey + (0.5*sizey)))
			add_child(node)
			tm.set_cell(pos.x, pos.y, -1) #this line remove the tile in TileMap
