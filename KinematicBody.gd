extends KinematicBody

# export var speed = 0.10

var velocity = Vector3.DOWN

var frames = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	velocity = velocity

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _physics_process(delta):
	var speed = OS.get_ticks_msec()/1000 * (9.8/100)
	velocity = Vector3.DOWN * speed
	frames = frames + 1  # by default 60 fps
	# velocity = velocity * 0.97
	move_and_collide(velocity * speed)

func _exit_tree():  # close the window
	print("Total frames: ", frames)
