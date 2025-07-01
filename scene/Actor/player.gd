extends Area2D

@onready var anim_sprite: AnimatedSprite2D = get_node("AnimatedSprite2D")

const JUMP_velocity = -200.0

var velocity: Vector2 = Vector2.ZERO

func _ready():
	gravity = 500.0
	randon_bird()	

func randon_bird() -> void:
	var animation = anim_sprite.sprite_frames.get_animation_names()
	anim_sprite.animation = animation[randi() % animation.size()]
	
func _process(delta):
	velocity.y += gravity * delta
	if Input.is_action_just_pressed("flap"):
		velocity.y = JUMP_velocity
		anim_sprite.play()
	position += velocity * delta
