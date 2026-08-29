local SecureService = {}
SecureService.__index = SecureService

function SecureService.new(seed)
    return setmetatable({ state = seed or 25 }, SecureService)
end

function SecureService:collect_processor(count)
    local acc = 0
    for i = 0, count - 1 do
        acc = acc + (self.state + i * 25) % 997
    end
    return acc
end

local obj = SecureService.new()
print(obj:collect_processor(25))

return SecureService
