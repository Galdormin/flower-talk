extends Node2D

var intro_balloon = preload("res://scenes/dialogue/fade_balloon/fade_balloon.tscn")
var dialogue = preload("res://dialogue/intro/intro.dialogue")


func _ready() -> void:
    DialogueManager.dialogue_ended.connect(end_intro)

    BalloonManager.use_fade_balloon()
    BalloonManager.play_text(dialogue, "start")


func end_intro(_res: DialogueResource) -> void:
    SceneManager.change_scene(SceneManager.Scene.SHOP)
