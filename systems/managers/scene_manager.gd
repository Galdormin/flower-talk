extends Node

enum Scene {
    START,
    SHOP,
    INTRO,
}

# Scene Def
const SCENES = {
    Scene.START: preload("res://scenes/menu/start/start_screen.tscn"),
    Scene.SHOP: preload("res://scenes/shop/shop_main.tscn"),
    Scene.INTRO: preload("res://scenes/intro/intro.tscn"),
}

var current_scene: Scene


func change_scene(scene: Scene) -> void:
    current_scene = scene
    get_tree().change_scene_to_packed(SCENES[scene])
