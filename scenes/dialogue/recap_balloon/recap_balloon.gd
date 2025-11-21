extends Control

var _opened: bool = false

@onready var animation_player: AnimationPlayer = %AnimationPlayer
@onready var message_container: VBoxContainer = %MessageContainer


func add_message(character: String, text: String) -> void:
    var bbcode_text = "[color=red]%s[/color] --- [indent]%s[/indent]" % [character, text]

    var message = RichTextLabel.new()
    message.bbcode_enabled = true
    message.fit_content = true
    message.text = bbcode_text

    message_container.add_child(message)


func clear_message() -> void:
    for child in message_container.get_children():
        child.queue_free()


func switch_panel() -> void:
    if _opened:
        animation_player.play("close_panel")
    else:
        animation_player.play("open_panel")

    _opened = not _opened


func _on_texture_button_pressed() -> void:
    switch_panel()
