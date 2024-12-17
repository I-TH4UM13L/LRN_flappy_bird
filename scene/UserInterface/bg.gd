extends ParallaxBackground

@onready var sky: Sprite2D = get_node("Sky/Sprite2D")

const scroll_speed = 200
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	sky.texture = load("res://assets/Sprite/FlappyAsset/background-" + str(randi_range(1, 2)) +".png")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	scroll_offset.x -= scroll_speed * delta
	
