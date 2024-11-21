extends CharacterBody2D

var speed = 140  # Швидкість гравця

func _physics_process(_delta):
	var direction = Vector2()  # Напрямок руху

	if Input.is_action_pressed("up"):  # Рух вгору
		direction.y -= 1
	if Input.is_action_pressed("down"):  # Рух вниз
		direction.y += 1
	if Input.is_action_pressed("left"):  # Рух вліво
		direction.x -= 1
	if Input.is_action_pressed("right"):  # Рух вправо
		direction.x += 1

	# Нормалізуємо напрямок, щоб швидкість була постійною в усіх напрямках
	if direction != Vector2():
		direction = direction.normalized()

	# Задаємо velocity для руху персонажа
	velocity = direction * speed

	# Використовуємо move_and_slide для переміщення
	move_and_slide()
	
