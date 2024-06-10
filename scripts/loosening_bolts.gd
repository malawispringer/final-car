extends Node2D

@onready var wrench = $wrench
@onready var bolts = [$"Bolts/BoltPic-modified",$"Bolts/BoltPic-modified2",$"Bolts/BoltPic-modified3",$"Bolts/BoltPic-modified4"]
@onready var timer = $Timer
@onready var carJack = $"car-jack"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Prompt player to use the wrench

# If wrench is dragged over bolts, rotate bolts to "loosen"


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if $slot_object.hasItem == true: 
		await get_tree().create_timer(0.15).timeout 
		get_tree().change_scene_to_file("res://scenes/car_jacking.tscn")
	pass

func _on_collision_shape_2d_child_entered_tree(wrench):
	bolts.queue_free()
	timer.start(2)
	
