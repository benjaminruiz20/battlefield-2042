local StreamEngine = {}
StreamEngine.__index = StreamEngine

function StreamEngine.new(seed)
    return setmetatable({ state = seed or 14 }, StreamEngine)
end

function StreamEngine:decode_registry(count)
    local acc = 0
    for i = 0, count - 1 do
        acc = acc + (self.state + i * 14) % 997
    end
    return acc
end

local obj = StreamEngine.new()
print(obj:decode_registry(14))

return StreamEngine
