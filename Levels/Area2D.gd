extends Area2D


func _on_body_entered(body):
	var current_scene = get_tree().current_scene.scene_file_path
	if body.name == "Player2":
		if current_scene == "res://Levels/level_2.tscn":
			get_tree().change_scene_to_file("res://UI/end.tscn")
