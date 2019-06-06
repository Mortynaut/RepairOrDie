extends Control

var _new_insanity: int
var _new_state: int
var _current_state: int
var _current_insanity: int
var _CryoBoxState: int setget Set_CryoBoxState, Get_CryoBoxState

func _ready():
	Set_CryoBoxState(0)
	_current_insanity = OnLoad.Get_Insanity()

signal cryobox_repairing

func Set_CryoBoxState(newState):
	if newState < 0:
		_CryoBoxState = 0
	elif newState > 5:
		_CryoBoxState = 5
	else:
		_CryoBoxState = newState

func Get_CryoBoxState():
	return _CryoBoxState

func _on_RepairButton_pressed():
	Set_CryoBoxState(Get_CryoBoxState() +1)
	OnLoad.cryo_state = Get_CryoBoxState()
	
	_current_insanity = OnLoad.Get_Insanity()
	_new_insanity = _current_insanity -10
	OnLoad.Set_Insanity(_new_insanity)

	emit_signal("cryobox_repairing")
