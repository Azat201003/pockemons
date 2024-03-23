class_name Boost extends Card

func _init(addAttack, addDdefense, addHP, types, id):
	self.addAttack  = addAttack
	self.addDdefense= addDdefense
	self.addHP      = addHP
	self.types      = types
	self.id         = id
	var typesS = []
	for i in types:
		typesS.append(i.type)
	setParams({'бонус к атаке'  : addAttack, 
			   'бонус к защите' : addDdefense,
			   'бонус к хп'     : addHP, 
			   'для типов'      : typesS})
