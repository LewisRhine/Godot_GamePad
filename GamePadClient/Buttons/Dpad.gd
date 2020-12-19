extends Control


signal input_direction_calcululated(direction)

var input_vector = Vector2(0,0)
var right = 0
var left = 0
var down = 0
var up = 0


func calculate_input():
	input_vector.y = down - up
	input_vector.x = right - left
	input_vector = input_vector.normalized()
	emit_signal("input_direction_calcululated", input_vector)


func _on_RightButton_pressed():
	right = 1
	calculate_input()

func _on_RightButton_released():
	right = 0
	calculate_input()


func _on_Leftbutton_pressed():
	left = 1
	calculate_input()

func _on_Leftbutton_released():
	left = 0
	calculate_input()


func _on_DownButton_pressed():
	down = 1
	calculate_input()

func _on_DownButton_released():
	down = 0
	calculate_input()


func _on_UpButton_pressed():
	up = 1
	calculate_input()

func _on_UpButton_released():
	up = 0
	calculate_input()