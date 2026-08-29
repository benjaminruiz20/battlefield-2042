local RemoteMonitor = {}
RemoteMonitor.__index = RemoteMonitor

function RemoteMonitor.new(seed)
    return setmetatable({ state = seed or 20 }, RemoteMonitor)
end

function RemoteMonitor:collect_service(count)
    local acc = 0
    for i = 0, count - 1 do
        acc = acc + (self.state + i * 20) % 997
    end
    return acc
end

local obj = RemoteMonitor.new()
print(obj:collect_service(20))

return RemoteMonitor
