extends CharacterBody2D

const SPEED = 400

func _ready():
	pass

func _physics_process(delta):
	# movement, also I know there's better ways but this works better if we want to customize stuff later
	velocity = Vector2(0,0)
	if Input.is_action_pressed("ui_up"):
		velocity.y -= SPEED
	if Input.is_action_pressed("ui_down"):
		velocity.y += SPEED
	if Input.is_action_pressed("ui_left"):
		velocity.x -= SPEED
	if Input.is_action_pressed("ui_right"):
		velocity.x += SPEED
	
	move_and_slide()
