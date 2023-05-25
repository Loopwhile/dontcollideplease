colison = {}
function colison:load()
    colison.colide = nil
end

function colison:update(dt)
    check(dt)
end

function check(dt)
    colison.colide = Checkcolison(player, square)
    if endGame == true then
        square.x = 600
        square.y = 400
        player.y = 0
        player.x = 0
    else
        -- all that i can say is that they didnt colide
    end
end

function colison:draw()
end
