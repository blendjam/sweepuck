local M = {}
M.touch = hash("touch")

function M.acquire()
	msg.post(".", "acquire_input_focus")
end

function M.release()
	msg.post(".", "release_input_focus")
end

function M.on_input(self, action_id, action)
	if action_id == M.touch and action.pressed then   -- <2>
		local button = gui.get_node("button")           -- <3>
		local text = gui.get_node("text")               -- <4>
		if gui.pick_node(button, action.x, action.y) then -- <5>
			gui.set_text(text, "Pressed")                 -- <6>
			gui.set_texture(button, "button_pressed")
		else
			gui.set_text(text, "CLICK ME!") -- <7>
			gui.set_texture(button, "button_normal")
		end
	end
end

return M
