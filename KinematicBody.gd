extends KinematicBody

export var speed = 0.14

var velocity = Vector3.ZERO


# Called when the node enters the scene tree for the first time.
func _ready():
	velocity = Vector3.FORWARD * speed
	velocity = velocity.rotated(Vector3.RIGHT, int(-PI/2))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	move_and_collide(velocity)
	# move_and_slide(velocity)
