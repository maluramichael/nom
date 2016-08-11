UI = require('ui')
Button = require('button')

UI.addWidget(Button(100, 100, 'foo'))

local game = {}
game.food = 0
game.ticker = 1
game.noms = 1
function game.update(delta)
	game.ticker = game.ticker - delta
	if game.ticker <= 0 then
		game.ticker = 1
		game.tick()
	end
end

function game.tick()
	game.food = game.food + game.noms
end

function love.draw()
	love.graphics.print(game.noms, 10, 10)
	love.graphics.print(game.food, 10, 30)

	UI.draw()
end

function love.update(delta)
	game.update(delta)
	UI.update(delta)
end
