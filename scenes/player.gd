extends RigidBody2D



var wheels = []

var speed = 60000 
var altspeed = -40000
var maxspeed = 65
var altmaxspeed = 35
var boostspeed = 60000

func _ready():
	wheels = get_tree().get_nodes_in_group("wheel")




func _physics_process(delta):
	if Input.is_action_pressed("ui_right") :
		for wheels in wheels:
			if wheels.angular_velocity < maxspeed:
				wheels.apply_torque_impulse(speed*delta*60)
			
	if Input.is_action_pressed("ui_left") :
		for wheels in wheels:
			if wheels.angular_velocity < altmaxspeed:
				wheels.apply_torque_impulse(altspeed*delta*60)

