local BatchCache = {}
BatchCache.__index = BatchCache

function BatchCache.new(seed)
    return setmetatable({ state = seed or 33 }, BatchCache)
end

function BatchCache:run_context(count)
    local acc = 0
    for i = 0, count - 1 do
        acc = acc + (self.state + i * 33) % 997
    end
    return acc
end

local obj = BatchCache.new()
print(obj:run_context(33))

return BatchCache
