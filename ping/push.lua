push = require 'push'

VIRTUAL_WIDTH = 432
VIRTUAL_HEIGHT = 243


WINDOW_WIDTH = 1280
WINDOW_HEIGHT = 720

PADDLE_WIDTH = 5
PADDLE_HEIGHT = 20

BALL_WIDTH = 5
BALL_HEIGHT = 20


function love.load()
	push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_HEIGHT, WINDOW_WIDTH, WINDOW_HEIGHT, {
		fullscreen = false,
		resizable = true
		})
end

function love.keypressed(key)
	-- body
	if key == 'escape' then
		love.event.quit()
end

function love.update(dt)
	-- body
end

function love.draw()
	-- body
	push:start()
	love.graphics.rectangle('fill', 10, VIRTUAL_HEIGHT/2 - PADDLE_HEIGHT/2, PADDLE_WIDTH, PADDLE_HEIGHT)

		push:start()
	love.graphics.rectangle('fill', VIRTUAL_WIDTH - PADDLE_HEIGHT  , VIRTUAL_HEIGHT/2 - PADDLE_HEIGHT/2, PADDLE_WIDTH, PADDLE_HEIGHT)

	push:finish()
end