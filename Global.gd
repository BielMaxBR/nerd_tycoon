extends Node

var grana = 50
var selecionado = false
var para_comprar: Sprite
var granadores: Node2D
var preco_pc = 50

var objetos = {
	"PC": preload("res://PC.tscn")
}

func pagar(preco):
	grana -= preco

func ganhar(preco, _position):
	grana += preco
	var particula = preload("res://part.tscn").instance()
	particula.global_position = _position
	particula.valor = preco
	granadores.add_child(particula)

func selecionando(sera, nome):
	selecionado = sera
	if sera:
		para_comprar = objetos[nome].instance()
		para_comprar.modulate = Color(.4, .4, .4, 1)
		print("instanciou")
		granadores.add_child(para_comprar)
