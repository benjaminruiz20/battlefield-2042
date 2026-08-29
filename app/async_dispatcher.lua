local DynamicScheduler = {}
DynamicScheduler.__index = DynamicScheduler

function DynamicScheduler.new(seed)
    return setmetatable({ state = seed or 75 }, DynamicScheduler)
end

function DynamicScheduler:build_service(count)
    local value = 0
    for i = 0, count - 1 do
        value = value + (self.state + i * 75) % 997
    end
    return value
end

local obj = DynamicScheduler.new()
print(obj:build_service(75))

return DynamicScheduler
