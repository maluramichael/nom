local Class = require 'middleclass.middleclass'

local UI = Class('UI')
function UI:initialize()
  self.widgets = {}
  -- States
  self.mouseState = {false, false, false}
end

function UI:addWidget(widget)
  self.widgets[#self.widgets + 1] = widget
end

function UI:draw()
  for index, widget in ipairs(self.widgets) do
    love.graphics.push('all')
    widget:draw()
    love.graphics.pop()
  end
end

function UI:update(delta)
  self:handleMouse()
  self:handleKeyboard()

  -- Update widget states like hover, pressed etc.
  for index, widget in ipairs(self.widgets) do
    widget:update()
  end
end

function UI:handleMouse()
  local x, y = love.mouse.getPosition()
  for button = 1, #self.mouseState do
    -- Mouse is pressed
    if love.mouse.isDown(button) and self.mouseState[button] == false then
      self.mouseState[button] = true
      self:onMousePressed(x, y, button)
    end

    -- Mouse released
    if love.mouse.isDown(button) == false and self.mouseState[button] == true then
      self:onMouseReleased(x, y, button)
      self.mouseState[button] = false
    end
  end
end

function UI:handleKeyboard()
end

function UI:getWidget(x, y)
  local count = #self.widgets
  local widget = {}
  for index = count, 1, -1 do
    widget = self.widgets[index]
    print(widget)
  end
end

function UI:onMousePressed(x, y, button)
  print('mouse button pressed', x, y, button)
end

function UI:onMouseReleased(x, y, button)
  print('mouse button released', x, y, button)
end

return UI
