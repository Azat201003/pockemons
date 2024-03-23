class_name Pockemon extends Card

func _init(attack, defense, type, maxHP, id):
	self.attack = attack
	self.defense= defense
	self.type   = type
	self.hp     = maxHP
	self.maxHP  = maxHP
	self.life   = true
	setParams({'Атака' 	: attack, 
			   'защита'	: defense, 
			   'тип'	: type.type, 
			   'хп'		: str(self.hp) + '/' + str(self.maxHP)})



func hit(hp):
	self.hp -= hp
	self.hp = max(min(self.hp, self.maxHP), 0)
	if self.hp == 0:
		self.life = false
		print("покемон номер " + str(self.id+1) + " погиб")
		
	setParams({'Атака' : self.attack, 
			   'защита': self.defense, 
			   'тип' : self.type.type, 
			   'хп': str(self.hp) + '/' + str(self.maxHP)})

