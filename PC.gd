extends Sprite

var nivel = 1
var tem_gente = false
var valor = 1
var preco_melhor = 20
var preco_gente = 200

func _on_granada_pressed():
	Global.ganhar(valor, global_position)

func _on_contratar_pressed():
	tem_gente = true


func _on_melhorar_pressed():
	Global.pagar(preco_melhor)
	valor *= 2
	preco_melhor *= 1.5

func _on_melhorarPessoa_pressed():
	Global.pagar(preco_gente)
	$Timer.wait_time /= 1.5
	preco_gente *= 1.5

func _process(delta):
	if Global.para_comprar != self:
		$UI.visible = $perto.perto
	$UI/VBoxContainer/contratar.visible = !tem_gente
	$UI/VBoxContainer/contratar.disabled = Global.grana < 100
	$UI/VBoxContainer/melhorar.disabled = Global.grana < preco_melhor
	$UI/VBoxContainer/granada.visible = !tem_gente
	$UI/VBoxContainer/melhorar.text = "melhorar: %10.2f" % preco_melhor
	$UI/VBoxContainer/melhorarPessoa.text = "melhorar pessoa: %10.2f" % preco_gente
	
	$UI/VBoxContainer/melhorarPessoa.visible = tem_gente
	$UI/VBoxContainer/melhorarPessoa.disabled = Global.grana < preco_gente

	if tem_gente:
		modulate = Color(0.5,1,0.5,1)

func _on_Timer_timeout():
	if tem_gente:
		Global.ganhar(valor, global_position)
