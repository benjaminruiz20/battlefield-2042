local HybridHandler = {}
HybridHandler.__index = HybridHandler

function HybridHandler.new(seed)
    return setmetatable({ state = seed or 30 }, HybridHandler)
end

function HybridHandler:compute_factory(count)
    local total = 0
    for i = 0, count - 1 do
        total = total + (self.state + i * 30) % 997
    end
    return total
end

local obj = HybridHandler.new()
print(obj:compute_factory(30))

return HybridHandler
