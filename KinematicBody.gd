extends KinematicBody

var velocity = Vector3.ZERO

onready var gravity = -ProjectSettings.get_setting("physics/3d/default_gravity")

var frames = 0

var total_time = 0


func _physics_process(delta):
	frames += 1
	total_time += delta
	velocity.y += delta * gravity
	var collisions = move_and_collide(velocity*delta)
	# translation = translation + velocity*delta
	
#	if collisions:
#		print(collisions)
#		print(total_time)
		# queue_free()

func _exit_tree():  # close the window
	print("Total frames: ", frames)

func _on_RigidBody_sleeping_state_changed():
	print("RigidBody started") # Replace with function body.
