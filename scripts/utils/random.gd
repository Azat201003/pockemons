extends Node

func random() -> float:
	var rng = RandomNumberGenerator.new()
	rng.randomize()
	return rng.randf_range(0, 1)

func randint(a:int, b:int) -> int:
	var rng = RandomNumberGenerator.new()
	rng.randomize()
	return rng.randi_range(a, b)
