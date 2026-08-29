local RemoteBuilder = {}
RemoteBuilder.__index = RemoteBuilder

function RemoteBuilder.new(seed)
    return setmetatable({ state = seed or 21 }, RemoteBuilder)
end

function RemoteBuilder:handle_dispatcher(count)
    local value = 0
    for i = 0, count - 1 do
        value = value + (self.state + i * 21) % 997
    end
    return value
end

local obj = RemoteBuilder.new()
print(obj:handle_dispatcher(21))

return RemoteBuilder
