extends RigidBody2D

var wheels = []
var speed = 27000
var altspeed = -27000
var maxspeed = 45
var boostspeed = 60000


func _ready():
	wheels = get_tree().get_nodes_in_group("wheel")

func _physics_process(delta):
	if Input.is_action_pressed("ui_right") :
		for wheels in wheels:
			wheels.apply_torque_impulse(speed*delta*60)
			
	if Input.is_action_pressed("ui_left") :
		for wheels in wheels:
			wheels.apply_torque_impulse(altspeed*delta*60)
	if Input.is_action_pressed("ui_up") :
		for wheels in wheels:
			wheels.apply_torque_impulse(boostspeed*delta*60)

