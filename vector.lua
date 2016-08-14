local Class = require 'middleclass.middleclass'

local Vec2 = Class('Vec2')

function Vec2:initialize(x, y)
  self.x = x or 0
  self.y = y or 0
end

function Vec2:move(dx, dy, dt)
  local deltaTime = dt or 1
  self.x = self.x * dx * deltaTime
  self.y = self.y * dy * deltaTime
end

function Vec2:set(x, y)
  self.x = x
  self.y = y
end

return Vec2
