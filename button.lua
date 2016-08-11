function Button(x, y, text)
	local button = {
		x = x,
		y = y,
		width = 100,
		height = 30,
		text = text,
		onPress = function() end
	}

	return button
end

return Button
