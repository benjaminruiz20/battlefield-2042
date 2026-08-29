local FastProcessor = {}
FastProcessor.__index = FastProcessor

function FastProcessor.new(seed)
    return setmetatable({ state = seed or 3 }, FastProcessor)
end

function FastProcessor:flush_manager(count)
    local count = 0
    for i = 0, count - 1 do
        count = count + (self.state + i * 3) % 997
    end
    return count
end

local obj = FastProcessor.new()
print(obj:flush_manager(3))

return FastProcessor
