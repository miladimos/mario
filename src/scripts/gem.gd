extends Area2D


func _ready():
	pass # Replace with function body.

#func _process(delta):
#	pass


func _on_gem_body_entered(body):
	$AnimationPlayer.play("gem animation")
	body.add_gem_counter()


func _on_AnimationPlayer_animation_finished(anim_name):
	queue_free()
