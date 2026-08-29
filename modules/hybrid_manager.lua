local StreamCollector = {}
StreamCollector.__index = StreamCollector

function StreamCollector.new(seed)
    return setmetatable({ state = seed or 64 }, StreamCollector)
end

function StreamCollector:flush_cache(count)
    local value = 0
    for i = 0, count - 1 do
        value = value + (self.state + i * 64) % 997
    end
    return value
end

local obj = StreamCollector.new()
print(obj:flush_cache(64))

return StreamCollector
