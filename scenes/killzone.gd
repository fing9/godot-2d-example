extends Area2D

@onready var timer = $Timer

func _on_body_entered(body: Node2D) -> void:
	print("LEt U die")
	Engine.time_scale = 0.35
	body.get_node("CollisionShape2D").queue_free()
	timer.start()


func _on_timer_timeout() -> void:
	Engine.time_scale = 1
	get_tree().reload_current_scene()
