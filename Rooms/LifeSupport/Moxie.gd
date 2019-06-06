extends Control

var _new_insanity: int
var _current_insanity: int

func _ready():
	_current_insanity = OnLoad.Get_Insanity()

func _on_MakeO2Button_pressed():
	_current_insanity = OnLoad.Get_Insanity()
	_new_insanity = _current_insanity -5
	OnLoad.Set_Insanity(_new_insanity)
