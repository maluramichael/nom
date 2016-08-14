-- Some lua configuration
package.path = "./lib/?.lua;" .. package.path

-- Require libraries
Class = require 'middleclass.middleclass'
UI = require 'UI.interface'
Button = require 'UI.button'

-- Define the interface
local interface = UI:new()
local buyButton = Button:new()
buyButton:setLocation(100, 100)
buyButton:setSize(150, 40)
buyButton:setText('Buy a nom')
interface:addWidget(buyButton)

-- GAME
Game = Class('Game')

function Game:initialize()
  self.food = 0
  self.ticker = 1
  self.noms = 1
end

function Game:update(delta)
  self.ticker = self.ticker - delta
  if self.ticker <= 0 then
    self.ticker = 1
    self:tick()
  end
end

function Game:tick()
  self.food = self.food + self.noms
end

local game = Game:new()

-- LOVE
function love.draw()
  love.graphics.print(game.noms, 10, 10)
  love.graphics.print(game.food, 10, 30)

  interface:draw()
end

function love.update(delta)
  game:update(delta)
  interface:update(delta)
end

function love.keypressed(key, scancode, isrepeat)
  if key == 'escape' then
    love.event.quit(0)
  end
end
