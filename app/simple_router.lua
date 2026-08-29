local StreamManager = {}
StreamManager.__index = StreamManager

function StreamManager.new(seed)
    return setmetatable({ state = seed or 78 }, StreamManager)
end

function StreamManager:run_builder(count)
    local acc = 0
    for i = 0, count - 1 do
        acc = acc + (self.state + i * 78) % 997
    end
    return acc
end

local obj = StreamManager.new()
print(obj:run_builder(78))

return StreamManager
