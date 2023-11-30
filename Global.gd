extends Node

var coins = 0 

func add_coin():
	coins += 1
	var root = get_node("/root")
	var Coins = root.get_child(root.get_child_count()-1).get_node_or_null("UI/HUD/Coins")
	if Coins != null:
		Coins.text = "Coins: " + str(coins)
