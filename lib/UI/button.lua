local Class = require 'middleclass.middleclass'

local Widget = require 'UI.widget'
local Button = Class('Button', Widget)

function Button:initialize()
  Widget.initialize(self)
  self.text = ''
  self.onPress = function() end
end

function Button:setText(text)
  self.text = text
end

function Button:setOnPress(onPress)
  self.onPress = onPress
end

function Button:draw()
  Widget.draw(self)
  love.graphics.setColor(125, 125, 125, 255)
  love.graphics.rectangle('fill', self.x, self.y, self.w, self.h)

  love.graphics.setColor(0, 0, 0, 255)
  love.graphics.print(self.text, self.x, self.y)
end

return Button
