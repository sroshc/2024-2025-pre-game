extends CharacterBody2D

const SPEED = 400
var sprint = 1

func _ready():
	pass

func _physics_process(delta):
	velocity = Vector2(0,0)
	if Input.is_action_pressed("shift"):
		sprint = 2
	else:
		sprint = 1
	
	if Input.is_action_pressed("ui_up") or Input.is_action_pressed("w"):
		velocity.y -= SPEED*sprint
	if Input.is_action_pressed("ui_down") or Input.is_action_pressed("s"):
		velocity.y += SPEED*sprint
	if Input.is_action_pressed("ui_left") or Input.is_action_pressed("a"):
		velocity.x -= SPEED*sprint
	if Input.is_action_pressed("ui_right") or Input.is_action_pressed("d"):
		velocity.x += SPEED*sprint
	
	move_and_slide()
