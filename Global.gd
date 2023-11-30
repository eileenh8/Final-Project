extends Node

var coins = 0 

func _ready():
	process_mode = Node.PROCESS_MODE_ALWAYS

func add_coin():
	coins += 1
	var root = get_node("/root")
	var Coins = root.get_child(root.get_child_count()-1).get_node_or_null("UI/HUD/Coins")
	if Coins != null:
		Coins.text = "Coins: " + str(coins)

func _input(_event):
	if Input.is_action_just_pressed("Menu"):
		var ro = get_node("/root")
		var pause_menu = ro.get_child(ro.get_child_count()-1).get_node("UI/Pause")
		if pause_menu == null:
			get_tree().quit()
		else:
			if pause_menu.visible:
				get_tree().paused = false
				pause_menu.hide()
			else:
				get_tree().paused = true
				pause_menu.show()
