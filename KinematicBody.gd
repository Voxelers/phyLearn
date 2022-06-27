extends KinematicBody

export var speed = 0.10

var velocity = Vector3.ZERO


# Called when the node enters the scene tree for the first time.
func _ready():
	velocity = Vector3.DOWN * speed


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	move_and_collide(velocity)
