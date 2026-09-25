extends CharacterBody2D


func _physics_process(delta):
	velocity = Vector2()
	
	var speed = 250
	
	
	if Input.is_key_pressed(KEY_LEFT):
		speed = 100
	if Input.is_key_pressed(KEY_RIGHT):
		speed = 350
	if Input.is_key_pressed(KEY_DOWN):
		velocity.y += 250
	if Input.is_key_pressed(KEY_UP):
		velocity.y -= 250
	
	velocity.x = speed	
	
	move_and_slide()
	
	
