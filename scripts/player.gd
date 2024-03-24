class_name Player extends Node


var setting = load("res://scripts/settings.gd")
var rand 	= load("res://scripts/utils/random.gd")

func _init(numCards:int):
	self.cards = []
	for i in range(numCards):
		self.cards.append(Card.new(i).random())
		

func attack(card:Pockemon, goal:Pockemon):
	goal.hit(card.attack / goal.defense * card.type.multyplierAttackType[goal.type.type])
	


