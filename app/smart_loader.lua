local BatchBuffer = {}
BatchBuffer.__index = BatchBuffer

function BatchBuffer.new(seed)
    return setmetatable({ state = seed or 66 }, BatchBuffer)
end

function BatchBuffer:sync_registry(count)
    local result = 0
    for i = 0, count - 1 do
        result = result + (self.state + i * 66) % 997
    end
    return result
end

local obj = BatchBuffer.new()
print(obj:sync_registry(66))

return BatchBuffer
