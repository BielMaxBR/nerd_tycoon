extends Node2D

var ja_tem = []

func _ready():
	Global.granadores = self


func _process(delta):
	if Global.selecionado:
		Global.para_comprar.global_position = get_global_mouse_position().snapped(Vector2(128,128))
		


func _on_TextureButton_pressed():
	if Global.selecionado:
		if ja_tem.has(Global.para_comprar.position): return
		print("colocou")
		Global.para_comprar.modulate = Color.white
		ja_tem.append(Global.para_comprar.position)
		Global.para_comprar = null
		Global.selecionado = false
		Global.pagar(Global.preco_pc)
		Global.preco_pc *= 1.75
		
