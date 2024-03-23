class_name listSet extends Node

func _init(list:Array):
	self.list = []
	
	for i in range(len(list)):
		if !(i in list):
			list.append(i)

func new():
	return self.list
