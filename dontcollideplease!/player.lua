player = {}
function player:load( ... )
    -- body
    player.x = 0
    player.y = 0
    player.width = 200
    player.height = 200
    player.moved = false
end

function player:update(dt)
    moveControls(dt)
end

function moveControls(dt)
   if love.keyboard.isDown("1") then
    player.x = 0
    player.y = 0
    player.moved = true
   elseif love.keyboard.isDown("2") then
    player.x = 300
    player.y = 0
    player.moved = true
   elseif love.keyboard.isDown("3") then
    player.x = 600
    player.y = 0
    player.moved = true
   elseif love.keyboard.isDown("4") then
        player.x = 0
        player.y = 200
        player.moved = true
   elseif love.keyboard.isDown("5") then
        player.x = 300
        player.y = 200
        player.moved = true
   elseif love.keyboard.isDown("6") then
        player.x = 600
        player.y = 200
        player.moved = true
   elseif love.keyboard.isDown("7") then
        player.x = 0
        player.y = 400
        player.moved = true
   elseif love.keyboard.isDown("8") then
        player.x = 300
        player.y = 400
        player.moved = true
   elseif love.keyboard.isDown("9") then
        player.x = 600
        player.y = 400
        player.moved = true
   end
end

function player:draw()
    love.graphics.rectangle("fill", player.x, player.y, player.width, player.height)
end