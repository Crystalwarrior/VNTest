extends Node2D

var talking = false

# Called when the node enters the scene tree for the first time.
func _ready():
	play("EarAnimation", "wiggle")
	play("MouthAnimation", "idle")
	play("Eye1Animation", "blink")
	play("Eye2Animation", "spin")


func play(player, anim):
	if has_node(player):
		player = get_node(player)
	if player and player.has_animation(anim):
		player.play(anim)

func stop(player):
	if has_node(player):
		player = get_node(player)
	player.stop()

func _on_Button_pressed():
	if talking:
		play("MouthAnimation", "idle")
	else:
		play("MouthAnimation", "talk")
	talking = !talking


func _on_Button2_pressed():
	stop("Eye1Animation")
	play("Eye1Animation", "blink")


func _on_Button3_pressed():
	stop("EarAnimation")
	play("EarAnimation", "wiggle")
