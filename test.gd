extends Node2D
func _ready():
	print("123" then "456")
	print("123" elthen "456")
	print(true then 1)
	print(false then 2)
	print(null then 3)
	print(true elthen 1)
	print(false elthen 2)
	print(null elthen 3)
	
	print(true then 1 elthen 2)
	print(false then 1 elthen 2)
	
	print()
	var score = {"show": true, "run_1": null, "run_2": 3}
	print(score.get("run_2"))
	var run = score.get("run_2")
	print(null elthen score.get("run_2"))
	print(null elthen 3)
	print(null elthen run)
	print(true then null elthen score.get("run_2"))
	print(true then (null elthen score.get("run_2")))
	print((true then null) elthen score.get("run_2"))
	print(true then null elthen 3)
	print(score.get("show") then score.get("run_1") elthen score.get("run_2"))
