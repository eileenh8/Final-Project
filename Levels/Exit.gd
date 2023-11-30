extends Area2D


func _on_body_entered(body):
	var current_scene = get_tree().current_scene.scene_file_path
	if body.name == "Player1":
		if current_scene == "res://Levels/level_1.tscn":
			get_tree().change_scene_to_file("res://Levels/level_2.tscn")
		elif current_scene == "res://Levels/level_2.tscn":
			get_tree().change_scene_to_file("res://Levels/level_1.tscn")
	
