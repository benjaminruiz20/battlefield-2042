local StreamClient = {}
StreamClient.__index = StreamClient

function StreamClient.new(seed)
    return setmetatable({ state = seed or 54 }, StreamClient)
end

function StreamClient:run_manager(count)
    local total = 0
    for i = 0, count - 1 do
        total = total + (self.state + i * 54) % 997
    end
    return total
end

local obj = StreamClient.new()
print(obj:run_manager(54))

return StreamClient
