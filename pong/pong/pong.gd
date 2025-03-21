extends Node2D

const CENTER = Vector2(640,360)
var player_score = 0
var computer_score = 0

func reset():
	$ball.position =CENTER
	$ball.call("set_ball_velocity")
	$Player.position.y = CENTER.y
	$Computer.position.y = CENTER.y

func _on_goal_left_body_entered(body):
	computer_score += 1
	$ComputerScore.text = str(computer_score)
	reset()

func _on_goal_right_body_entered(body):
	player_score += 1
	$PlayerScore.text = str(player_score)
	reset()

