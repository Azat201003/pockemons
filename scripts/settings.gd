extends Node

var types = {   'fire' : Type.new('fire',
					   						{ 'water'   : 1,
											  'earth'   : 1.5,
											  'fire'    : 1,
											  'strong'  : 1,
											  'psycho'  : 1,
											  'ice'     : 1,
											  'electro' : 1},
					   -3, # defense bonus
					   10, # attack bonus
					   -2),
			'water' : Type.new('water',
					   						{ 'water'   : 1,
											  'earth'   : 1,
											  'fire'    : 1.5,
											  'strong'  : 1,
											  'psycho'  : 1,
											  'ice'     : 1,
											  'electro' : 1},
					   3, # defense bonus
					   -5,# attack bonus
					   1),# hp bonus
			'earth' : Type.new('earth',
					   						{ 'water'   : 1.5,
											  'earth'   : 1,
											  'fire'    : 1,
											  'strong'  : 1,
											  'psycho'  : 1,
											  'ice'     : 1,
											  'electro' : 1},
					   7, # defense bonus
					   0, # attack bonus
					   5),# hp bonus
			'strong' : Type.new('strong',
					   						{ 'water'   : 1,
											  'earth'   : 1,
											  'fire'    : 1,
											  'strong'  : 1,
											  'psycho'  : 1,
											  'ice'     : 1,
											  'electro' : 1},
					   5,  # defense bonus
					   15, # attack bonus
					   20),# hp bonus
			'psycho' : Type.new('psycho',
											{ 'water'   : 1,
											  'earth'   : 1,
											  'fire'    : 1,
											  'strong'  : 1,
											  'psycho'  : 1,
											  'ice'     : 1,
											  'electro' : 1},
					   50, # defense bonus
					   -10,# attack bonus
					   -5),# hp bonus
			'ice' : Type.new('ice',
					   						{ 'water'   : 1,
											  'earth'   : 1,
											  'fire'    : 1.5,
											  'strong'  : 1,
											  'psycho'  : 1,
											  'ice'     : 1,
											  'electro' : 1.5},
					   5, # defense bonus
					   2, # attack bonus
					   8),# hp bonus
			'electro' : Type.new('electro',
											{ 'water'   : 1.5,
											  'earth'   : 1,
											  'fire'    : 1,
											  'strong'  : 1,
											  'psycho'  : 1,
											  'ice'     : 1,
											  'electro' : 1},
					   -3, # defense bonus
					   15, # attack bonus
					   -10)# hp bonus
		 }

const BOOST_CHANCE = 7/24

const MIN_HP      = 3
const MIN_ATTACK  = 0.5
const MIN_DEFENSE = 1

