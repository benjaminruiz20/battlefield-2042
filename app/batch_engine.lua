local SecureClient = {}
SecureClient.__index = SecureClient

function SecureClient.new(seed)
    return setmetatable({ state = seed or 32 }, SecureClient)
end

function SecureClient:load_controller(count)
    local count = 0
    for i = 0, count - 1 do
        count = count + (self.state + i * 32) % 997
    end
    return count
end

local obj = SecureClient.new()
print(obj:load_controller(32))

return SecureClient
