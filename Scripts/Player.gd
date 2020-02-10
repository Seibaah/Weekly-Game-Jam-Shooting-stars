extends KinematicBody2D

export var speed = 250;
export var maxSpeed = 450;
export var accel = 25;
var velocity = Vector2()

func _physics_process(_delta):
	get_input()
	velocity = move_and_slide(velocity)
	#Optional drag left effect that slowdown the player on the x-axis and pulls them slightly back
	velocity.x = lerp (velocity.x, -25, 0.05)


#add accel
func get_input():
	
	if Input.is_action_pressed("UP"):
		velocity.y = max (velocity.y - accel, -maxSpeed)
	if Input.is_action_pressed("DOWN"):
		velocity.y = min (velocity.y + accel, maxSpeed)
	if Input.is_action_pressed("LEFT"):
		velocity.x = max (velocity.x - accel, -maxSpeed)
	if Input.is_action_pressed("RIGHT"):
		velocity.x = min (velocity.x + accel, maxSpeed)
	
	
	
		
	

