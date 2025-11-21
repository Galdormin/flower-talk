extends Node

enum BalloonType { CLASSIC, FADE }

const BALLOONS = {
    BalloonType.CLASSIC: preload("res://addons/dialogue_manager/example_balloon/example_balloon.tscn"),
    BalloonType.FADE: preload("res://scenes/dialogue/fade_balloon/fade_balloon.tscn"),
}

var current_balloon: BalloonType = BalloonType.CLASSIC


func play_text(dialogue: DialogueResource, chapter: String) -> void:
    var balloon = BALLOONS[current_balloon]
    DialogueManager.show_dialogue_balloon_scene(balloon, dialogue, chapter)


func use_classic_balloon() -> void:
    current_balloon = BalloonType.CLASSIC


func use_fade_balloon() -> void:
    current_balloon = BalloonType.FADE
