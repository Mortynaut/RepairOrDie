extends Node

var _Insanity: int setget Set_Insanity, Get_Insanity
var cryo_state = 0

func _ready():
	_Insanity = 100
	
func Set_Insanity(newInsanity):
	if newInsanity > 100:
		_Insanity = 100
	elif newInsanity < 0:
		_Insanity = 0
	else:
		_Insanity = newInsanity
		
func Get_Insanity():
	return _Insanity
