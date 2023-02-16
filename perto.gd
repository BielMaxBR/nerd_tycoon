extends Area2D

export var perto = false


func _on_perto_area_entered(area):
	perto = area.name == "compravel"

func _on_perto_area_exited(area):
	if area.name == "compravel": perto = false
