extends TextureRect

func _ready():
	set_cryoBox_texture()

var _STATES = ["broken.png", "broken.png", "broken.png", "repaired.png", "repaired.png", "turnedOn.png"]

func _on_CryoBox_cryobox_repairing():
	set_cryoBox_texture()

func set_cryoBox_texture():
	set_texture(load("res://Props/CryoBox/" + _STATES[OnLoad.cryo_state]))