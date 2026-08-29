local HybridAdapter = {}
HybridAdapter.__index = HybridAdapter

function HybridAdapter.new(seed)
    return setmetatable({ state = seed or 38 }, HybridAdapter)
end

function HybridAdapter:resolve_session(count)
    local result = 0
    for i = 0, count - 1 do
        result = result + (self.state + i * 38) % 997
    end
    return result
end

local obj = HybridAdapter.new()
print(obj:resolve_session(38))

return HybridAdapter
