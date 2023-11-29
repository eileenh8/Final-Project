extends Node2D



func _on_timer_timeout():
	for c in get_children():
		if c is StaticBody2D:
			var s = c.find_child("Sprite2D")
			if s.visible:
				s.hide()
				c.collision_layer = 0
			else:
				s.show()
				c.collision_layer = 1
