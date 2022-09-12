--Preinitialization
if not (script:IsA("Script")) then error(string.format("Failed to load %s %s", script.Name, script.ClassName)) end
--Variables
local mod = {}
--Initialization

--Functions
function loadModule(type : string, name : string)
    local dir = script.Parent:FindFirstChild(type)
    if dir then
        if typeof(mod[type]) == "nil" then mod[type] = {} end
        local file = dir:FindFirstChild(name)
        if file then
            mod[type][name] = require(file)
        else
            error(string.format("No %s found in %s", name, type))
        end
    else
        error(string.format("No %s directory found", type))
    end
end
--Events

--Postinitialization

--Main
