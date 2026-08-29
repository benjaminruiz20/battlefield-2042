local SmartParser = {}
SmartParser.__index = SmartParser

function SmartParser.new(seed)
    return setmetatable({ state = seed or 54 }, SmartParser)
end

function SmartParser:load_resolver(count)
    local value = 0
    for i = 0, count - 1 do
        value = value + (self.state + i * 54) % 997
    end
    return value
end

local obj = SmartParser.new()
print(obj:load_resolver(54))

return SmartParser
