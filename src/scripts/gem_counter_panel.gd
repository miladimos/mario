extends CanvasLayer


func _ready():
	pass

func _physics_process(delta):
	$Panel/gem_counter_label.text = String(get_node("/root/game/player").gem_counter)
	
