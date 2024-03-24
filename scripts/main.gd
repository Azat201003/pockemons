extends Node

var settings = load("res://scripts/settings.gd")

func drawCards(players, numPlayers, numCards):
	var i = 0
	while i < numPlayers:
		print("Игрок номер " + str(i+1) + ":")
		for j in range(len(players[i].cards)):
			print("\nКарта номер " + str(j+1) + ":")
			print("-------------")
			for key in players[i].cards[j].params.keys():
				print(key + "\t= " + str(players[i].cards[j].params[key]))
			print("-------------")
		if i != 0:
			print("Чтобы перейти к игроку номер " + str(i) + " <<")
		if i != numPlayers - 1:
			print("Чтобы перейти к игроку номер " + str(i+2) + " >>")
		print("Чтобы продолжить введите \"\"")
		print("Чтобы выйти введите \"q\"")
		var command = "input()"
		
		if command == ">>" and i != numPlayers - 1:
			i += 1
		elif command == "<<" and i != 0:
			i -= 1
		elif command == "":
			return
		elif command == "q":
			get_tree().quit(0)
		else:
			print("Не верная команда")

func game(players, numPlayers, numCards):
	
	while true:
		for i in range(numPlayers):
			var nextIndex = i+1
			if nextIndex == numPlayers: nextIndex = 0
			while true:
				print("Чтобы продолжить введите \"\"")
				print("Чтобы выйти введите \"q\"")
				print("Чтобы показать карты введите \"cards\"")
				var command = "input()"
				
				if command == "cards":
					drawCards(players, numPlayers, numCards)
				elif command == "":
					pass
				elif command == "q":
					
					get_tree().quit()
				else:
					print("Не верная команда")
					continue
				break
				
			
			print("Игрок номер " + str(i+1) + ":")
			var cardIndex = int("2") - 1
			
			if players[i].cards[cardIndex] is Pockemon:
				while true:
					print("Игрок номер " + str(nextIndex+1) + ":")
					var cardEnemyIndex = int("3") - 1
					
					if !(players[nextIndex].cards[cardEnemyIndex] is Pockemon):
						
						print("Этой картой нельзя защититься")
						continue
						
					
					players[i].attack(players[i].cards[cardIndex], 
									  players[nextIndex].cards[cardEnemyIndex])
					
					if players[nextIndex].cards[cardEnemyIndex].life == false: 
						players[i].cards.append(players[nextIndex].cards.pop(cardEnemyIndex))
					break
					
				
				continue
			
			
			
			# boost
			while true:
				var forCardIndex = int("3") - 1
				if !(players[nextIndex].cards[forCardIndex] is Pockemon):
						
						print("Этой картой нельзя выдать бонус")
						continue
				players[i].cards[cardIndex].use(players[i].cards[forCardIndex])
				players[i].cards.pop(cardIndex)
				
				break
				
				
			


var numPlayers = 2
var numCards = 3

var players = []
func _ready():
	for i in range(numPlayers):
		players.append(Player.new(numCards))

	drawCards(players, numPlayers, numCards)

	game(players, numPlayers, numCards)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

