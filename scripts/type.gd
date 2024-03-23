class_name Type extends Node

func _init(type:String, multyplierAttackType:Dictionary, defenseSpawnBonus:int, attackSpawnBonus:int, hpBonus:int):
	self.type = type
	self.multyplierAttackType = multyplierAttackType
	self.defenseSpawnBonus = defenseSpawnBonus
	self.attackSpawnBonus = attackSpawnBonus
	self.hpBonus = hpBonus


func getAttackMultiplier(type):
	return self.multyplierAttackType[type]
