extends Control

func _process(delta):
	$Grana.text = "Global: {0}".format([Global.grana])
	$mais1.disabled = Global.grana < Global.preco_pc
	
	$mais1.text = "mais um pc: %10.2f" % Global.preco_pc

func _on_mais1_pressed():
	print("pressionou")
	
	if !Global.selecionado:
		print("positivou")
		Global.selecionando(!Global.selecionado, "PC")
