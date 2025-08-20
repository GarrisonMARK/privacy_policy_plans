extends Node2D

export var page_url : String = ""

func _on_copy_link_button_pressed():
	if JavaScript.is_available():
		var js_code = "navigator.clipboard.writeText('" + page_url + "');"
		JavaScript.eval(js_code)
		print("Attempting to copy to clipboard: " + page_url)
	else:
		OS.set_clipboard(page_url)
		print("Copied to clipboard (desktop): " + page_url)
