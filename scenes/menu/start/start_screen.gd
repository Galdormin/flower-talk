extends Container

@onready var version_label: Label = %VersionLabel


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
    pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
    pass


func _on_quit_button_pressed() -> void:
    Loggie.error("Not Implemented")


func _on_play_button_pressed() -> void:
    Loggie.error("Not Implemented")


func _on_settings_button_pressed() -> void:
    Loggie.error("Not Implemented")


func _on_bug_report_button_pressed() -> void:
    Loggie.error("Not Implemented")
