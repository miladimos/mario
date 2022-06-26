extends KinematicBody2D

var number = 0
var shetab = Vector2(0,0)
var player_speed = 250

func _ready():
	pass # Replace with function body.



func _process(delta):
	pass

func _physics_process(delta):
	if Input.is_action_pressed("ui_right"):
		shetab.x += player_speed
		$Sprite.play("running")
		$Sprite.flip_h = false		
	elif Input.is_action_pressed("ui_left"):
		shetab.x -= player_speed
		$Sprite.play("running")
		$Sprite.flip_h =true
	elif Input.is_action_pressed("ui_up") && is_on_floor():
		shetab.y -= 1000		
	else:
		$Sprite.play("default")
		
	if not is_on_floor():
		$Sprite.play("jumping")
		
	shetab.y = shetab.y + 25
	shetab = move_and_slide(shetab, Vector2.UP)
	shetab.x = lerp(shetab.x, 0, 0.9)

	
