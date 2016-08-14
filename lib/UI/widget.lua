local Class = require 'middleclass.middleclass'

local Widget = Class('Widget')

function Widget:initialize()
  self.x = 10
  self.y = 10
  self.w = 100
  self.h = 100
end

function Widget:setLocation(x, y)
	self.x = x
	self.y = y
end

function Widget:setSize(w, h)
	self.w = w
	self.h = h
end

function Widget:draw()
	love.graphics.rectangle('line', self.x, self.y, self.w, self.h)
end

function Widget:update(delta)
end

return Widget
