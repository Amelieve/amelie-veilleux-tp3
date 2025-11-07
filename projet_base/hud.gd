extends CanvasLayer

@onready var Main = get_node("/root/Gamemanager")

# Nombre total de pièces à collecter
@export var total_coins := 4

func _ready() -> void:
	# Affiche la valeur initiale au format 0/4
	%CoinsLabel.text = str(Main.coin) + "/" + str(total_coins)
	Main.coin_collectee.connect(retroaction_monnaie)

func retroaction_monnaie(valeur_monnaies):
	# Affiche la nouvelle valeur au format x/4
	%CoinsLabel.text = str(valeur_monnaies) + "/" + str(total_coins)
