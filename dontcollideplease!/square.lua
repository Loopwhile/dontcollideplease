square = {}


function square:load()
    square.area = nil
    square.type = nil
    square.img1 = love.graphics.newImage("assets/death.png")
    square.img2 = love.graphics.newImage("assets/reset.png")
    square.y = nil
    square.x = nil
    square.width = self.img1:getWidth()
    square.height = self.img1:getHeight()
    square.start = true
end

function square:update(dt)
    if square.start then
        square.y = 400
        square.x = 600
        square.start = false
    end
   if player.moved == true then
        if getArea() == 1 then
            square.x = 0
            square.y = 0
            
        elseif getArea() == 2 then
           square.x = 300
           square.y = 0
        elseif getArea() == 3 then
            square.x = 600
            square.y = 0
        elseif getArea() == 4 then
            square.x = 0
            square.y = 200
        elseif getArea() == 5 then
            square.x = 300
            square.y = 200
        elseif getArea() == 6 then
            square.x = 600
            square.y = 200
        elseif getArea() == 7 then
            square.x = 0
            square.y = 400
        elseif getArea() == 8 then
            square.x = 300
            square.y = 400
        elseif getArea() == 9 then
            square.x = 600
            square.y = 400
        end
        getColor()
        getArea()
        drawSquare()
        player.moved = false

     end
end

function getArea()
    square.area = math.random(1, 9)
    return square.area
end

function getColor()
    square.type = math.random(1, 2)
    return square.type
end

function drawSquare() 
    if getColor() == 1 then
        love.graphics.draw(square.img1, square.x, square.y)
    elseif getColor() == 2 then
        love.graphics.draw(square.img2, square.x, square.y)
    end
end
function square:draw()
    drawSquare()
end