extends KinematicBody

# export var speed = 0.10

var velocity = Vector3.DOWN

var frames = 0

signal start_rigid


# Called when the node enters the scene tree for the first time.
func _ready():
	velocity = velocity

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	print("KinematicBody")
	var speed = OS.get_ticks_msec()/1000 * (9.8/100)
	velocity = Vector3.DOWN * speed
	frames = frames + 1  # by default 60 fps
	move_and_collide(velocity)

	# emit_signal("start_rigid")

func _exit_tree():  # close the window
	print("Total frames: ", frames)


func _on_RigidBody_sleeping_state_changed():
	print("RigidBody started") # Replace with function body.
