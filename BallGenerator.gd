extends Node

@export var ball_scene: PackedScene

func _on_timer_timeout():
	var ball = ball_scene.instantiate()
	var angle = randf_range(20, 70)
	var vel   = randf_range(300, 800)
	var bounciness = randf_range(2, 6)
	print("generated: angle = ", angle, ", vel = ", vel, ", bouncy = ", bounciness)
	angle = deg_to_rad(angle)
	ball.rotation = angle
	ball.position = Vector2(0, 0)
	ball.get_physics_material_override().set_bounce(bounciness)
	ball.apply_central_impulse(Vector2(vel * cos(angle), -vel * sin(angle)))
	add_child(ball)
