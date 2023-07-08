extends RigidBody2D

#@export var v0 = 400
#var screen_size

func _ready():
	pass
	#screen_size = get_viewport_rect().size

func _process(delta):
	#var vt = v0
	#position += Vector2(vt * delta, 0)
	pass
	
func blah(n):
	get_physics_material_override().set_bounce(n)
	#set_bounce(n)
