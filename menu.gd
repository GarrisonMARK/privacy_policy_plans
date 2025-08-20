extends Node2D

onready var content_container = $ContentContainer

const PrivacyScene = preload("res://Privacy.tscn")
const Privacy2Scene = preload("res://Privacy2.tscn")
const Privacy3Scene = preload("res://Privacy3.tscn")
const CreditsScene = preload("res://Credits.tscn")
const DisclaimerScene = preload("res://Disclaimer.tscn")

func _ready():
	_switch_scene(PrivacyScene)

func _switch_scene(scene):
	# Clear existing content
	for child in content_container.get_children():
		child.queue_free()

	# Instance new scene
	var new_content = scene.instance()
	content_container.add_child(new_content)

func _on_privacy_button_pressed():
	_switch_scene(PrivacyScene)

func _on_privacy2_button_pressed():
	_switch_scene(Privacy2Scene)

func _on_privacy3_button_pressed():
	_switch_scene(Privacy3Scene)

func _on_credits_button_pressed():
	_switch_scene(CreditsScene)

func _on_disclaimer_button_pressed():
	_switch_scene(DisclaimerScene)
