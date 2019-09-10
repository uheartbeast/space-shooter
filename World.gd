extends Node

var score = 0 setget set_score

onready var scoreLabel = $ScoreLabel

func set_score(value):
	score = value
	scoreLabel.text = "Score = " + str(score)