bg = {}
function bg:load()
    bg.background = love.graphics.newImage("assets/bg.png")
end

function bg:update(dt)
    
end

function bg:draw()
    love.graphics.draw(self.background, 0, 0)
end