extends KinematicBody2D


var shetab = Vector2()
var speed = 150
export var jahat = -1


func _ready():
	if jahat == -1:
		$AnimatedSprite.flip_h = true
	else:
		$AnimatedSprite.flip_h = false

func _physics_process(delta):
	shetab.y = shetab.y + 50
	shetab.x = speed * jahat
	shetab = move_and_slide(shetab, Vector2.UP)
	
	if not is_on_floor():
		$AnimatedSprite.play("jumping")
	else:
		$AnimatedSprite.play("walking")
	
	if is_on_wall():
		jahat = jahat * -1
		$AnimatedSprite.flip_h = not $AnimatedSprite.flip_h
