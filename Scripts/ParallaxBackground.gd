extends CanvasLayer

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var scroll_x = 0
var player_node = "/root/TileMap/KinematicBody2D"

# Called when the node enters the scene tree for the first time.
func _process(delta):
	scroll_x -= 2000 * delta
	$Background.scroll_offset.x = scroll_x


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
