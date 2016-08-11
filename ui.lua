local ui = {
	widgets = {}
}

function ui.addWidget(widget)
	ui.widgets[#ui.widgets + 1] = widget
end

function ui.draw()
	for index, widget in ipairs(ui.widgets) do
		love.graphics.rectangle('fill', widget.x, widget.y, widget.width, widget.height)
	end
end

function ui.update(delta)
	function love.mousepressed(x, y, button, isTouch)

		print('mouse pressed')
	end
end

return ui
