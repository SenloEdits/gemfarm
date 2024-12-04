-- Initial Execution Phase

-- First set of arguments
local args1 = {
    [1] = "8e314e05044145f",
    [2] = {
        ["Direction"] = Vector3.new(-0.3704546093940735, -0.9139495491981506, 0.16570983827114105),
        ["Origin"] = Vector3.new(372.41595458984375, 94.63214874267578, -491.36285400390625)
    },
    [3] = 0
}

-- Second set of arguments
local args2 = {
    [1] = "8e314e05044145f",
    [2] = {
        ["Direction"] = Vector3.new(-0.49813491106033325, -0.8611645698547363, 0.10127805918455124),
        ["Origin"] = Vector3.new(373.05047607421875, 94.73043060302734, -487.6864318847656)
    },
    [3] = 0
}

-- Third set of arguments
local args3 = {
    [1] = "8e314e05044145f",
    [2] = {
        ["Direction"] = Vector3.new(-0.5760218501091003, -0.7838881015777588, 0.23177200555801392),
        ["Origin"] = Vector3.new(372.968994140625, 94.72418975830078, -487.59698486328125)
    },
    [3] = 0
}

-- Fourth set of arguments
local args4 = {
    [1] = "8e314e05044145f",
    [2] = {
        ["Direction"] = Vector3.new(-0.23151423037052155, -0.9693403840065002, -0.08234337717294693),
        ["Origin"] = Vector3.new(373.21258544921875, 94.70973205566406, -487.7878112792969)
    },
    [3] = 0
}

-- Execute initial actions sequentially
game:GetService("ReplicatedStorage").endpoints.client_to_server.spawn_unit:InvokeServer(unpack(args1))
task.wait(15)
game:GetService("ReplicatedStorage").endpoints.client_to_server.spawn_unit:InvokeServer(unpack(args2))
task.wait(15)
game:GetService("ReplicatedStorage").endpoints.client_to_server.spawn_unit:InvokeServer(unpack(args3))
task.wait(15)
game:GetService("ReplicatedStorage").endpoints.client_to_server.spawn_unit:InvokeServer(unpack(args4))

-- Loop Execution Phase

-- Function to execute the AIZEN upgrades
local function executeAizenUpgrades()
    -- AIZEN 1
    local aizen1 = {
        [1] = "8e314e05044145f3"
    }
    game:GetService("ReplicatedStorage").endpoints.client_to_server.upgrade_unit_ingame:InvokeServer(unpack(aizen1))

    -- AIZEN 2
    local aizen2 = {
        [1] = "8e314e05044145f2"
    }
    game:GetService("ReplicatedStorage").endpoints.client_to_server.upgrade_unit_ingame:InvokeServer(unpack(aizen2))

    -- AIZEN 3
    local aizen3 = {
        [1] = "8e314e05044145f1"
    }
    game:GetService("ReplicatedStorage").endpoints.client_to_server.upgrade_unit_ingame:InvokeServer(unpack(aizen3))

    -- AIZEN 4
    local aizen4 = {
        [1] = "8e314e05044145f4"
    }
    game:GetService("ReplicatedStorage").endpoints.client_to_server.upgrade_unit_ingame:InvokeServer(unpack(aizen4))
end

-- Loop the AIZEN upgrades with a 5-second delay
while true do
    executeAizenUpgrades()
    task.wait(5)
end