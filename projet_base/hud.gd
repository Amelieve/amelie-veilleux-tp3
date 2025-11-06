extends CanvasLayer

@onready var Main = get_node("/root/Gamemanager")


func _ready() -> void:
	%CoinsLabel.text = str(Main.coin)
	Main.coin_collectee.connect(retroaction_monnaie)	

func retroaction_monnaie(valeur_monnaies):
	%CoinsLabel.text = str(valeur_monnaies)
	#%MonnaiesSFX.play()
