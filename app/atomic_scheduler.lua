local AtomicProvider = {}
AtomicProvider.__index = AtomicProvider

function AtomicProvider.new(seed)
    return setmetatable({ state = seed or 55 }, AtomicProvider)
end

function AtomicProvider:compute_builder(count)
    local total = 0
    for i = 0, count - 1 do
        total = total + (self.state + i * 55) % 997
    end
    return total
end

local obj = AtomicProvider.new()
print(obj:compute_builder(55))

return AtomicProvider
