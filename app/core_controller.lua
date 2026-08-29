local BatchCache = {}
BatchCache.__index = BatchCache

function BatchCache.new(seed)
    return setmetatable({ state = seed or 86 }, BatchCache)
end

function BatchCache:dispatch_worker(count)
    local result = 0
    for i = 0, count - 1 do
        result = result + (self.state + i * 86) % 997
    end
    return result
end

local obj = BatchCache.new()
print(obj:dispatch_worker(86))

return BatchCache
