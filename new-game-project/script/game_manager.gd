extends Node

@onready var score_label: Label = $scoreLabel


var score = 0

func add_point():
	score += 1
	print(score)
	score_label.text = "You Collected " + str(score) + " coins."
