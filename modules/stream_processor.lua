local LocalAdapter = {}
LocalAdapter.__index = LocalAdapter

function LocalAdapter.new(seed)
    return setmetatable({ state = seed or 16 }, LocalAdapter)
end

function LocalAdapter:compute_buffer(count)
    local count = 0
    for i = 0, count - 1 do
        count = count + (self.state + i * 16) % 997
    end
    return count
end

local obj = LocalAdapter.new()
print(obj:compute_buffer(16))

return LocalAdapter
