class_name Card extends Node


var settings 	= load("res://scripts/settings.gd")
var rand	 	= load("res://scripts/utils/random.gd")

func _init(id):
	self.params = {}
	self.id = id

func random():
	if rand.random() <= settings.BOOST_CHANCE:
		var randomTypes   = listSet.new([rand.choice(Array(settings.types.values())), 
									rand.choice(Array(settings.types.values())),
									rand.choice(Array(settings.types.values())),
									rand.choice(Array(settings.types.values()))], )
		var randomAddAttack     = rand.randint(0, 20)
		var randomAddDefense    = rand.randint(0, 20)
		var randomAddHP         = rand.randint(0, 30)
		return Boost.new(randomAddAttack,
						 randomAddDefense,
						 randomAddHP,
						 randomTypes,
						 self.id)
	var randomType      = settings.types[Array(settings.types.keys())[rand.randint(0, len(settings.types.keys()) - 1)]]
	var randomDefense   = max(settings.MIN_DEFENSE, rand.randint(0, 15) + randomType.defenseSpawnBonus)
	var randomAttack    = max(settings.MIN_ATTACK, rand.randint(0, 15) + randomType.attackSpawnBonus)
	var randomHP        = max(settings.MIN_HP, rand.randint(0, 10) + randomType.hpBonus)
	
	return Pockemon.new(randomDefense,
						randomAttack,
						randomType,
						randomHP,
						self.id)

func setParams(params):
	self.params = params
