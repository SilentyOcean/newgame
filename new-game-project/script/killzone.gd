extends Area2D
@onready var timer: Timer = $Timer #$Timer is path, for example if there's a camera in player it'd be 
									#$Player/camera


func _on_body_entered(body: Node2D) -> void: #Body is the body that entered the area
	print("Character died")
	Engine.time_scale = 0.5
	timer.start()
	body.get_node("CollisionShape2D").queue_free()

func _on_timer_timeout() -> void:
	Engine.time_scale = 1
	get_tree().reload_current_scene()
	
	
