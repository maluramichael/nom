local Class = require 'middleclass.middleclass'

local Renderer = Class('Renderer')

function Renderer:text(text, x, y, color)
  love.graphics.push('all')
  love.graphics.setColor(color.r, color.g, color.b, color.a)
  love.graphics.print(text, x, y)
  love.graphics.pop()
end

return Renderer
