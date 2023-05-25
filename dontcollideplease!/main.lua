require("player")
require("square")
require("colison")
require("background")

function love.load()
    player:load()
    square:load()
    colison:load()
    bg:load()
end

function love.update(dt)
    player:update(dt)
    square:update(dt)
    colison:update(dt)
    bg:update(dt)
end

function love.draw()
    bg:draw()
    player:draw()
    square:draw()
    colison:draw()
end

function Checkcolison(a, b)
    if a.x + a.width > b.x and a.x < b.x + b.width and a.y + a.height > b.y and a.y < b.y + b.height then
        endGame = true
    else
        endGame = false
    end
end